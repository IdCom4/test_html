#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

void	ft_putnbr_base(int nbr, char *base);

int		main(void)
{
	ft_putnbr_base(-2639, "");
	write(1, "\n", 1);
	ft_putnbr_base(-2639, "0");
	write(1, "\n", 1);
	ft_putnbr_base(-2639, "01");
	write(1, "\n", 1);
	ft_putnbr_base(-2639, "012");
	write(1, "\n", 1);
	ft_putnbr_base(-2639, "0123");
	write(1, "\n", 1);
	ft_putnbr_base(-10, "01234");
	write(1, "\n", 1);
	ft_putnbr_base(-1, "012345");
	write(1, "\n", 1);
	ft_putnbr_base(-864, "0123456");
	write(1, "\n", 1);
	ft_putnbr_base(-98946, "01234567");
	write(1, "\n", 1);
	ft_putnbr_base(-9864531, "012345678");
	write(1, "\n", 1);
	ft_putnbr_base(-168531, "0123456789");
	write(1, "\n", 1);
	ft_putnbr_base(-681, "0123456789A");
	write(1, "\n", 1);
	ft_putnbr_base(6453, "0123456789AB");
	write(1, "\n", 1);
	ft_putnbr_base(46532384, "0123456789ABC");
	write(1, "\n", 1);
	ft_putnbr_base(-16843, "0123456789ABCD");
	write(1, "\n", 1);
	ft_putnbr_base(-639, "0123456789ABCDE");
	write(1, "\n", 1);
	ft_putnbr_base(-269, "0123456789ABCDEF");
	write(1, "\n", 1);
	ft_putnbr_base(-239, "poneyvif");
	write(1, "\n", 1);
	ft_putnbr_base(-263, "0123456789");
	write(1, "\n", 1);
	ft_putnbr_base(534, "");
	write(1, "\n", 1);
	ft_putnbr_base(234, "0");
	write(1, "\n", 1);
	ft_putnbr_base(62, "01");
	write(1, "\n", 1);
	ft_putnbr_base(685, "012");
	write(1, "\n", 1);
	ft_putnbr_base(0, "0123");
	write(1, "\n", 1);
	ft_putnbr_base(-4641, "01234");
	write(1, "\n", 1);
	ft_putnbr_base(-1000001, "012345");
	write(1, "\n", 1);
	ft_putnbr_base(-68842, "0123456");
	write(1, "\n", 1);
	ft_putnbr_base(9, "01234567");
	write(1, "\n", 1);
	ft_putnbr_base(30303, "012345678");
	write(1, "\n", 1);
	ft_putnbr_base(2, "0123456789");
	write(1, "\n", 1);
	ft_putnbr_base(1, "0123456789A");
	write(1, "\n", 1);
	ft_putnbr_base(0, "0123456789AB");
	write(1, "\n", 1);
	ft_putnbr_base(123456, "0123456789ABC");
	write(1, "\n", 1);
	ft_putnbr_base(-247483648, "0123456789ABCD");
	write(1, "\n", 1);
	ft_putnbr_base(6745, "0123456789ABCDE");
	write(1, "\n", 1);
	ft_putnbr_base(2147483647, "0123456789ABCDEF");
	write(1, "\n", 1);
	ft_putnbr_base(2147483646, "poneyvif");
	write(1, "\n", 1);
	ft_putnbr_base(50680, "0123456789");
	write(1, "\n", 1);
	ft_putnbr_base(18, "");
	write(1, "\n", 1);
	ft_putnbr_base(900405, "0");
	write(1, "\n", 1);
	ft_putnbr_base(100101, "011");
	write(1, "\n", 1);
	ft_putnbr_base(100001, "01szrg");
	write(1, "\n", 1);
	ft_putnbr_base(168, "0123+");
	write(1, "\n", 1);
	ft_putnbr_base(-183, "01234");
	write(1, "\n", 1);
	ft_putnbr_base(5615, "012-345");
	write(1, "\n", 1);
	ft_putnbr_base(315, "01253456");
	write(1, "\n", 1);
	ft_putnbr_base(5646, "0123+-4567");
	write(1, "\n", 1);
	char base[10] = {0};
	ft_putnbr_base(965, base);
	write(1, "\n", 1);
	ft_putnbr_base(3654, "0123\t56789");
	write(1, "\n", 1);
	ft_putnbr_base(9842, "0123\n456789A");
	write(1, "\n", 1);
	ft_putnbr_base(36578, "012345\r6789AB");
	write(1, "\n", 1);
	ft_putnbr_base(2135468745, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXY");
	write(1, "\n", 1);
	ft_putnbr_base(-986, "0123456789ABCD");
	write(1, "\n", 1);
	strcpy(base, "hi guys");
	base[4] = 3;	
	ft_putnbr_base(2639, base);
	write(1, "\n", 1);
	ft_putnbr_base(18, "0123456789ABCDEFGH");
	write(1, "\n", 1);
	base[4] = 127;
	ft_putnbr_base(29, base);
	write(1, "\n", 1);
	ft_putnbr_base(639, "myOwnP3rBase");
	write(1, "\n", 1);
	ft_putnbr_base(198526847, "myOwnP3rBaseDulikIt?");
	write(1, "\n", 1);
	return (0);
}
