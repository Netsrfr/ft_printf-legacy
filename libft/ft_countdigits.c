/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_countdigits.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: jpfeffer <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/10/03 10:03:45 by jpfeffer          #+#    #+#             */
/*   Updated: 2016/10/03 10:03:46 by jpfeffer         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_countdigits(int num)
{
	int i;
	int	j;

	i = 1;
	j = 0;
	if (num == -2147483648)
		return (11);
	if (num < 0)
	{
		j = 1;
		num = (num * -1);
	}
	while (num >= 10)
	{
		i++;
		num = (num / 10);
	}
	return (i + j);
}