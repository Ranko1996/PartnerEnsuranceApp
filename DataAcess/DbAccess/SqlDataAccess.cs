﻿using Dapper;
using System.Data;
using Microsoft.Extensions.Configuration;
using Microsoft.Data.SqlClient;

namespace DataAcess.DbAccess;

public class SqlDataAccess : ISqlDataAccess
{
    private readonly IConfiguration _config;

    public SqlDataAccess(IConfiguration config)
    {
        _config = config;
    }

    public async Task<IEnumerable<T>> LoadData<T, U>(string storedProcedure,
                                                     U parameters,
                                                     string connectionId = "Default")
    {
        using IDbConnection connection = new SqlConnection(_config.GetConnectionString(connectionId));

        return await connection.QueryAsync<T>(storedProcedure, parameters,
            commandType: CommandType.StoredProcedure);
    }

    public async Task SaveData<T>(string storedProcedure,
                                     T parameters,
                                     string connectionId = "Default")
    {
        using IDbConnection connection = new SqlConnection(_config.GetConnectionString(connectionId));

        await connection.ExecuteAsync(storedProcedure, parameters,
            commandType: CommandType.StoredProcedure);

    }
}
