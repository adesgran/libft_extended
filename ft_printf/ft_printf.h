/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adesgran <adesgran@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/24 12:39:50 by adesgran          #+#    #+#             */
/*   Updated: 2021/12/24 12:41:37 by adesgran         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINFT
# define FT_PRINTF

# include <libft.h>

int		print_i(va_list args);
int		print_d(va_list args);
int		print_c(va_list args);
int		print_s(va_list args);
int		print_x(va_list args);
int		print_upx(va_list args);
int		print_p(va_list args);
int		print_u(va_list args);

#endif
