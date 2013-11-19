/*
 * Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the
 * Free Software Foundation; either version 2 of the License, or (at your
 * option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along
 * with this program. If not, see <http://www.gnu.org/licenses/>.
 */

#include "ZynDatabase.h"

void ZynDatabaseConnection::DoPrepareStatements()
{
    if (!m_reconnecting)
        m_stmts.resize(MAX_ZYNDATABASE_STATEMENTS);

    PrepareStatement(GUILD_XP_ADD, "INSERT INTO `guild_level_system` (`gID`, `level`, `current_xp`) VALUES (?,?,?)", CONNECTION_ASYNC);
    PrepareStatement(GUILD_XP_DELETE, "DELETE FROM  `guild_level_system` WHERE gID = ?", CONNECTION_ASYNC);
    PrepareStatement(GUILD_XP_UPDATE, "UPDATE `guild_level_system` SET `level`= ?, `current_xp`= ? WHERE gID = ?", CONNECTION_ASYNC);
}
