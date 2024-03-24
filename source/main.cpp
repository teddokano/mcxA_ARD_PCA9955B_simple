/*
 * Copyright 2024 Tedd OKANO
 *
 * SPDX-License-Identifier: BSD-3-Clause
 *
 */

#include	"r01lib.h"

I2C			i2c( I2C_SDA, I2C_SCL );	//	SDA, SCL
DigitalOut	rst( D9, 1 );
DigitalOut	oe(  D8, 0 );

constexpr uint8_t	LEDOUT0	= 0x02;
constexpr uint8_t	IREFALL	= 0x45;
constexpr uint8_t	PWM0	= 0x08;

int main(void)
{
	constexpr uint8_t	address		= 0xBC >> 1;
	uint8_t				w_data[]	= { LEDOUT0, 0xAA, 0xAA, 0xAA, 0xAA };
	uint8_t				iref_data[]	= { IREFALL, 0xFF };
	uint8_t				pwm_data[ 2 ];

	i2c.write( address,    w_data, sizeof(    w_data ) );
	i2c.write( address, iref_data, sizeof( iref_data ) );

	while ( true )
	{
		for ( int channel = 0; channel < 16; channel++ )
		{
			pwm_data[ 0 ]	= PWM0 + channel;

			for ( int pwm = 0; pwm < 256; pwm++ )
			{
				pwm_data[ 1 ]	= pwm;
				i2c.write( address, pwm_data, sizeof( pwm_data ) );
				wait( 0.01 );
			}

			pwm_data[ 1 ]	= 0x00;
			i2c.write( address, pwm_data, sizeof( pwm_data ) );
		}
	}
}
