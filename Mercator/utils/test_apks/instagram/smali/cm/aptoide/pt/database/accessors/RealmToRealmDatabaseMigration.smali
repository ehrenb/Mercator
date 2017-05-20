.class Lcm/aptoide/pt/database/accessors/RealmToRealmDatabaseMigration;
.super Ljava/lang/Object;
.source "RealmToRealmDatabaseMigration.java"

# interfaces
.implements Lio/realm/ab;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcm/aptoide/pt/database/accessors/RealmToRealmDatabaseMigration;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/database/accessors/RealmToRealmDatabaseMigration;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$migrate$0(Lio/realm/f;)V
    .locals 2

    .prologue
    .line 180
    const-string v0, "status"

    const-string v1, "SYNCING_ERROR"

    invoke-virtual {p0, v0, v1}, Lio/realm/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public migrate(Lio/realm/e;JJ)V
    .locals 10

    .prologue
    .line 43
    invoke-virtual {p1}, Lio/realm/e;->m()Lio/realm/ah;

    move-result-object v3

    .line 46
    const-wide/16 v0, 0x1f8b

    cmp-long v0, p2, v0

    if-gtz v0, :cond_11

    .line 48
    const-wide/16 v0, 0x1f8b

    .line 50
    const-string v2, "Scheduled"

    invoke-virtual {v3, v2}, Lio/realm/ah;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "appId"

    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    .line 52
    const-string v2, "Rollback"

    invoke-virtual {v3, v2}, Lio/realm/ah;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "md5"

    const/4 v5, 0x1

    .line 53
    invoke-virtual {v2, v4, v5}, Lio/realm/ae;->b(Ljava/lang/String;Z)Lio/realm/ae;

    move-result-object v2

    const-string v4, "fileSize"

    .line 54
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "trustedBadge"

    .line 55
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    .line 57
    const-string v2, "Download"

    invoke-virtual {p1, v2}, Lio/realm/e;->b(Ljava/lang/String;)V

    .line 58
    const-string v2, "FileToDownload"

    invoke-virtual {p1, v2}, Lio/realm/e;->b(Ljava/lang/String;)V

    .line 60
    const-string v2, "FileToDownload"

    invoke-virtual {v3, v2}, Lio/realm/ah;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "appId"

    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "md5"

    invoke-virtual {v2, v4}, Lio/realm/ae;->d(Ljava/lang/String;)Lio/realm/ae;

    .line 62
    const-string v2, "Download"

    invoke-virtual {v3, v2}, Lio/realm/ah;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "appId"

    .line 63
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "md5"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Lio/realm/i;

    const/4 v7, 0x0

    sget-object v8, Lio/realm/i;->b:Lio/realm/i;

    aput-object v8, v6, v7

    .line 64
    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    .line 66
    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    .line 68
    sget-object v0, Lcm/aptoide/pt/database/accessors/RealmToRealmDatabaseMigration;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DB migrated to version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    const-wide/16 v0, 0x1f8c

    cmp-long v0, v4, v0

    if-nez v0, :cond_10

    .line 73
    const-string v0, "Scheduled"

    invoke-virtual {v3, v0}, Lio/realm/ah;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v6

    .line 74
    invoke-virtual {v6}, Lio/realm/ae;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v6}, Lio/realm/ae;->b()Lio/realm/ae;

    .line 81
    :cond_0
    const-string v0, ""

    .line 82
    const-string v1, "Scheduled"

    invoke-virtual {p1, v1}, Lio/realm/e;->a(Ljava/lang/String;)Lio/realm/af;

    move-result-object v1

    const-string v2, "md5"

    invoke-virtual {v1, v2}, Lio/realm/af;->a(Ljava/lang/String;)Lio/realm/ag;

    move-result-object v1

    invoke-virtual {v1}, Lio/realm/ag;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v1, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/f;

    .line 84
    const-string v2, "md5"

    invoke-virtual {v0, v2}, Lio/realm/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v0}, Lio/realm/f;->deleteFromRealm()V

    :cond_1
    move-object v1, v2

    .line 89
    goto :goto_1

    .line 91
    :cond_2
    const-string v0, "md5"

    invoke-virtual {v6, v0}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    .line 92
    const-string v0, "md5"

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Lio/realm/i;

    const/4 v7, 0x0

    sget-object v8, Lio/realm/i;->b:Lio/realm/i;

    aput-object v8, v2, v7

    invoke-virtual {v6, v0, v1, v2}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    .line 94
    const-class v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/realm/e;->a(Ljava/lang/String;)Lio/realm/af;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lio/realm/af;->e()Lio/realm/ag;

    move-result-object v0

    invoke-virtual {v0}, Lio/realm/ag;->b()Z

    .line 99
    const-wide/16 v0, 0x1

    add-long/2addr v0, v4

    .line 101
    sget-object v2, Lcm/aptoide/pt/database/accessors/RealmToRealmDatabaseMigration;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB migrated to version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcm/aptoide/pt/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :goto_2
    const-wide/16 v4, 0x1f8d

    cmp-long v2, v0, v4

    if-nez v2, :cond_a

    .line 108
    const-string v2, "Scheduled"

    invoke-virtual {v3, v2}, Lio/realm/ah;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Lio/realm/ae;->b()Lio/realm/ae;

    .line 110
    const-string v4, "packageName"

    invoke-virtual {v2, v4}, Lio/realm/ae;->d(Ljava/lang/String;)Lio/realm/ae;

    .line 111
    const-string v4, "appAction"

    invoke-virtual {v2, v4}, Lio/realm/ae;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 112
    const-string v4, "appAction"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    .line 118
    :cond_3
    const-string v2, "StoreMinimalAd"

    invoke-virtual {v3, v2}, Lio/realm/ah;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 119
    const-string v2, "StoreMinimalAd"

    invoke-virtual {v3, v2}, Lio/realm/ah;->c(Ljava/lang/String;)V

    .line 121
    :cond_4
    const-string v2, "MinimalAd"

    invoke-virtual {v3, v2}, Lio/realm/ah;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 122
    const-string v2, "MinimalAd"

    invoke-virtual {v3, v2}, Lio/realm/ah;->c(Ljava/lang/String;)V

    .line 125
    :cond_5
    const-string v2, "MinimalAd"

    invoke-virtual {v3, v2}, Lio/realm/ah;->b(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    .line 126
    const-string v4, "description"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "packageName"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    .line 127
    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "networkId"

    const-class v5, Ljava/lang/Long;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    .line 128
    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "clickUrl"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    .line 129
    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "cpcUrl"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    .line 130
    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "cpdUrl"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    .line 131
    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "appId"

    const-class v5, Ljava/lang/Long;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    .line 132
    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "adId"

    const-class v5, Ljava/lang/Long;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    .line 133
    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "cpiUrl"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    .line 134
    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "name"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    .line 135
    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "iconPath"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    .line 136
    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    .line 138
    const-string v2, "Download"

    invoke-virtual {v3, v2}, Lio/realm/ah;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    .line 140
    const-string v4, "packageName"

    invoke-virtual {v2, v4}, Lio/realm/ae;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 141
    const-string v4, "packageName"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    .line 144
    :cond_6
    const-string v4, "versionCode"

    invoke-virtual {v2, v4}, Lio/realm/ae;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 145
    const-string v4, "versionCode"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    .line 148
    :cond_7
    const-string v4, "action"

    invoke-virtual {v2, v4}, Lio/realm/ae;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 149
    const-string v4, "action"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    .line 152
    :cond_8
    const-string v4, "scheduled"

    invoke-virtual {v2, v4}, Lio/realm/ae;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 153
    const-string v4, "scheduled"

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    .line 156
    :cond_9
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 158
    sget-object v2, Lcm/aptoide/pt/database/accessors/RealmToRealmDatabaseMigration;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DB migrated to version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcm/aptoide/pt/logger/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_a
    const-wide/16 v4, 0x1f8e

    cmp-long v2, v0, v4

    if-nez v2, :cond_d

    .line 162
    const-string v2, "FileToDownload"

    invoke-virtual {v3, v2}, Lio/realm/ah;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    .line 164
    const-string v4, "versionName"

    invoke-virtual {v2, v4}, Lio/realm/ae;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 165
    const-string v4, "versionName"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    .line 168
    :cond_b
    const-string v2, "Download"

    invoke-virtual {v3, v2}, Lio/realm/ah;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    .line 169
    const-string v4, "versionName"

    invoke-virtual {v2, v4}, Lio/realm/ae;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 170
    const-string v4, "versionName"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    .line 173
    :cond_c
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 176
    :cond_d
    const-wide/16 v4, 0x1f8f

    cmp-long v2, v0, v4

    if-nez v2, :cond_e

    .line 178
    const-string v2, "PaymentConfirmation"

    invoke-virtual {v3, v2}, Lio/realm/ah;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "status"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Lio/realm/i;

    const/4 v7, 0x0

    sget-object v8, Lio/realm/i;->c:Lio/realm/i;

    aput-object v8, v6, v7

    .line 179
    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    move-result-object v2

    invoke-static {}, Lcm/aptoide/pt/database/accessors/RealmToRealmDatabaseMigration$$Lambda$1;->lambdaFactory$()Lio/realm/ae$c;

    move-result-object v4

    .line 180
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Lio/realm/ae$c;)Lio/realm/ae;

    move-result-object v2

    .line 181
    invoke-virtual {v2}, Lio/realm/ae;->b()Lio/realm/ae;

    move-result-object v2

    const-string v4, "productId"

    .line 182
    invoke-virtual {v2, v4}, Lio/realm/ae;->d(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "paymentId"

    .line 183
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "price"

    .line 184
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "currency"

    .line 185
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "taxRate"

    .line 186
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "icon"

    .line 187
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "title"

    .line 188
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "description"

    .line 189
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "priceDescription"

    .line 190
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "apiVersion"

    .line 191
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "sku"

    .line 192
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "packageName"

    .line 193
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "developerPayload"

    .line 194
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "type"

    .line 195
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "appId"

    .line 196
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "storeName"

    .line 197
    invoke-virtual {v2, v4}, Lio/realm/ae;->a(Ljava/lang/String;)Lio/realm/ae;

    .line 199
    const-string v2, "PaymentAuthorization"

    invoke-virtual {v3, v2}, Lio/realm/ah;->b(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "paymentId"

    const-class v5, Ljava/lang/Integer;

    const/4 v6, 0x1

    new-array v6, v6, [Lio/realm/i;

    const/4 v7, 0x0

    sget-object v8, Lio/realm/i;->b:Lio/realm/i;

    aput-object v8, v6, v7

    .line 200
    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "url"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    .line 201
    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "redirectUrl"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    .line 202
    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "status"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Lio/realm/i;

    const/4 v7, 0x0

    sget-object v8, Lio/realm/i;->c:Lio/realm/i;

    aput-object v8, v6, v7

    .line 203
    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    .line 205
    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    .line 207
    :cond_e
    const-wide/16 v4, 0x1f90

    cmp-long v2, v0, v4

    if-nez v2, :cond_f

    .line 208
    const-string v2, "Download"

    invoke-virtual {v3, v2}, Lio/realm/ah;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "downloadError"

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v6, v6, [Lio/realm/i;

    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    .line 210
    const-class v2, Lcm/aptoide/pt/database/realm/PaymentConfirmation;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/realm/e;->b(Ljava/lang/String;)V

    .line 211
    const-class v2, Lcm/aptoide/pt/database/realm/PaymentAuthorization;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lio/realm/e;->b(Ljava/lang/String;)V

    .line 213
    const-string v2, "PaymentConfirmation"

    invoke-virtual {v3, v2}, Lio/realm/ah;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v4, "payerId"

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Lio/realm/i;

    const/4 v7, 0x0

    sget-object v8, Lio/realm/i;->c:Lio/realm/i;

    aput-object v8, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    .line 215
    const-string v2, "PaymentAuthorization"

    invoke-virtual {v3, v2}, Lio/realm/ah;->a(Ljava/lang/String;)Lio/realm/ae;

    move-result-object v2

    const-string v3, "payerId"

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Lio/realm/i;

    const/4 v6, 0x0

    sget-object v7, Lio/realm/i;->c:Lio/realm/i;

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lio/realm/ae;->a(Ljava/lang/String;Ljava/lang/Class;[Lio/realm/i;)Lio/realm/ae;

    .line 217
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 219
    :cond_f
    return-void

    :cond_10
    move-wide v0, v4

    goto/16 :goto_2

    :cond_11
    move-wide v4, p2

    goto/16 :goto_0
.end method
