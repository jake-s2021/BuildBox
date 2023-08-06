#include<avr/io.h>
#include<avr/eeprom.h>
#include<util/delay.h>



int main(){

    DDRB &= ~(1<<PB0);
    PORTB |= (1<<PB0);
    DDRB |= (1<<DDB1);


    unsigned char button_rel = 1;


    if(eeprom_read_byte((uint8_t*)(0x01))){
        PORTB |= (1<<PB1);
    }



  

    while(1){



        if(button_rel && !(PINB & (1<<PINB0))){

            PORTB ^= (1 << PB1);
            button_rel = 0;
            _delay_ms(40);
            eeprom_write_byte((uint8_t*)(0x01), (PORTB & (1 << PB1)));

        }
        if((PINB & (1<<PINB0))){

            button_rel = 1;
            _delay_ms(40);
            
        }



    }


}

