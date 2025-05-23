export const ORDER_STATUS = {
  NOT_REQUESTED: 0,
  PENDING: 1,
  ACCEPTED: 2,
  COMPLETED: 3,
  CANCELLED: 4,
};

export const ORDER_STATUS_MAP = {
  [ORDER_STATUS.NOT_REQUESTED]: 'NOT_REQUESTED',
  [ORDER_STATUS.PENDING]: 'PENDING',
  [ORDER_STATUS.ACCEPTED]: 'ACCEPTED',
  [ORDER_STATUS.COMPLETED]: 'COMPLETED',
  [ORDER_STATUS.CANCELLED]: 'CANCELLED',
};
