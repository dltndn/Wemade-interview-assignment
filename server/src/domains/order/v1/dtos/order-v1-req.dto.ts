import { ApiProperty, ApiPropertyOptional, PickType } from '@nestjs/swagger';
import { IsIn, IsInt, IsOptional, IsPositive, IsString } from 'class-validator';
import { Type } from 'class-transformer';

export class OrdersReqParamsDto {
    @ApiProperty({
        description: 'Order ID',
        example: 1,
    })
    @IsInt()
    @IsPositive()
    @Type(() => Number)
    orderId: number;
}
