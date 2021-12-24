/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   print_s.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adesgran <adesgran@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/06 16:13:37 by adesgran          #+#    #+#             */
/*   Updated: 2021/12/24 11:48:27 by adesgran         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libft.h> 

int	print_s(va_list args)
{
	unsigned char	*s;
	int				len;

	s = va_arg(args, unsigned char *);
	if (s)
	{
		len = 0;
		while (s[len])
			len++;
		write(1, s, len);
		return (len);
	}
	else
	{
		write(1, "(null)", 6);
		return (6);
	}
}
