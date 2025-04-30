if not exists(select 1 from dbo.[Partner])
begin 
	INSERT INTO dbo.[Partner] (
        FirstName,
        LastName,
        Address,
        PartnerNumber,
        CroatianPIN,
        PartnerTypeId,
        CreatedAtUtc,
        CreatedByUser,
        IsForeign,
        ExternalCode,
        Gender
    )
    VALUES
    ('Ivan', 'Horvat', 'Zagrebačka 12', '12345678901234567890', '12345678901', 1, GETUTCDATE(), 'ivan.horvat@example.com', 0, 'EXTERNAL0010', 'M'),
    ('Maja', 'Kovač', 'Vukovarska 8', '09876543210987654321', NULL, 2, GETUTCDATE(), 'maja.kovac@example.com', 1, 'EXTERNAL0011', 'F'),
    ('Luka', 'Novak', 'Savska 5', '11112222333344445555', '09876123456', 1, GETUTCDATE(), 'luka.novak@example.com', 0, 'EXTERNAL0012', 'M'),
    ('Ana', 'Marić', 'Petrova 3', '55556666777788889999', NULL, 2, GETUTCDATE(), 'ana.maric@example.com', 1, 'EXTERNAL0013', 'F'),
    ('Petra', 'Jurić', 'Ilica 100', '22223333444455556666', '12312312312', 1, GETUTCDATE(), 'petra.juric@example.com', 0, 'EXTERNAL0014', 'N');
end