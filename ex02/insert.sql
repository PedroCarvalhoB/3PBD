INSERT INTO Cliente VALUES
(1, 'Alice Souza', '21999990001', 'alice@email.com', '1111-2222-3333-4444', 500),
(2, 'Bruno Lima', '21999990002', 'bruno@email.com', '5555-6666-7777-8888', 300),
(3, 'Carla Mendes', '21999990003', 'carla@email.com', '9999-0000-1111-2222', 150),
(4, 'Diego Rocha', '21999990004', 'diego@email.com', '3333-4444-5555-6666', 600),
(5, 'Elisa Costa', '21999990005', 'elisa@email.com', '7777-8888-9999-0000', 450);

INSERT INTO FilaDeEspera VALUES
(1, 1, '08:30', 'esperando'),
(2, 2, '09:00', 'atendido'),
(3, 3, '09:15', 'esperando'),
(4, 4, '09:45', 'cancelado'),
(5, 5, '10:00', 'esperando');

INSERT INTO Pagamento VALUES
(1, 120.00, 'cartao', '2025-05-01', 'pago'),
(2, 200.00, 'pix', '2025-05-02', 'pendente'),
(3, 150.00, 'dinheiro', '2025-05-03', 'pago'),
(4, 180.00, 'cartao', '2025-05-04', 'pago'),
(5, 300.00, 'pix', '2025-05-05', 'cancelado');

INSERT INTO Profissional VALUES
(1, 'Fernanda Silva', '21998887777', 'fernanda@clinic.com', '08:00-16:00'),
(2, 'Lucas Almeida', '21998886666', 'lucas@clinic.com', '10:00-18:00'),
(3, 'Marina Torres', '21998885555', 'marina@clinic.com', '09:00-17:00'),
(4, 'Thiago Nunes', '21998884444', 'thiago@clinic.com', '13:00-21:00'),
(5, 'Rafaela Dias', '21998883333', 'rafaela@clinic.com', '08:00-14:00');

INSERT INTO Especialidade VALUES
(1, 'Massoterapia'),
(2, 'Estética Facial'),
(3, 'Estética Corporal'),
(4, 'Depilação'),
(5, 'Podologia');

INSERT INTO Especialidade_Profissional VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 3, 4),
(5, 4, 5);

INSERT INTO Servico VALUES
(1, 1, 'Massagem Relaxante', 'Massagem corporal completa para relaxamento.', 60, 120.00),
(2, 2, 'Limpeza de Pele', 'Tratamento completo de limpeza facial.', 90, 150.00),
(3, 3, 'Drenagem Linfática', 'Massagem com foco em retenção de líquidos.', 60, 180.00),
(4, 4, 'Depilação a Cera', 'Depilação corporal com cera quente.', 45, 80.00),
(5, 5, 'Tratamento de Calos', 'Cuidado com pés e remoção de calos.', 30, 70.00);

INSERT INTO Reserva VALUES
(1, 1, 1, 1, 1, '2025-05-10', '10:00', 'confirmada', 120.00),
(2, 2, 2, 2, 2, '2025-05-11', '11:00', 'pendente', 150.00),
(3, 3, 3, 3, 3, '2025-05-12', '12:00', 'confirmada', 180.00),
(4, 4, 4, 4, 4, '2025-05-13', '13:00', 'cancelada', 80.00),
(5, 5, 5, 5, 5, '2025-05-14', '14:00', 'confirmada', 70.00);

INSERT INTO Pacote VALUES
(1, 'Pacote Bem-estar', 'Inclui massagem relaxante e limpeza de pele.'),
(2, 'Pacote Corpo Saudável', 'Serviços corporais completos.'),
(3, 'Pacote Facial Premium', 'Todos os serviços faciais em um só.'),
(4, 'Pacote Essencial', 'Serviços básicos com desconto.'),
(5, 'Pacote Pés e Corpo', 'Inclui podologia e drenagem linfática.');

INSERT INTO Pacote_Servico VALUES
(1, 1, 1, 10.00),
(2, 1, 2, 15.00),
(3, 2, 3, 20.00),
(4, 5, 5, 5.00),
(5, 5, 3, 10.00);

INSERT INTO Reserva_Pacote_Servico VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);
