.class public Lcm/aptoide/pt/v8engine/deprecated/tables/Rollback;
.super Lcm/aptoide/pt/v8engine/deprecated/tables/BaseTable;
.source "Rollback.java"


# static fields
.field public static final COLUMN_ACTION:Ljava/lang/String; = "action"

.field public static final COLUMN_APKID:Ljava/lang/String; = "package_name"

.field public static final COLUMN_CONFIRMED:Ljava/lang/String; = "confirmed"

.field public static final COLUMN_ICONPATH:Ljava/lang/String; = "icon_path"

.field public static final COLUMN_MD5:Ljava/lang/String; = "md5"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field public static final COLUMN_VERSION:Ljava/lang/String; = "version"

.field private static final NAME:Ljava/lang/String; = "rollbacktbl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/deprecated/tables/BaseTable;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Landroid/database/Cursor;)Lio/realm/ad;
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 51
    const-string v0, "action"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    const/16 v3, 0x7c

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 53
    const/4 v4, -0x1

    if-le v3, v4, :cond_0

    .line 55
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 58
    :cond_0
    invoke-static {v0}, Lcm/aptoide/pt/v8engine/deprecated/OldActionsMap;->getActionFor(Ljava/lang/String;)Lcm/aptoide/pt/database/realm/Rollback$Action;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_3

    .line 61
    new-instance v3, Lcm/aptoide/pt/database/realm/Rollback;

    invoke-direct {v3}, Lcm/aptoide/pt/database/realm/Rollback;-><init>()V

    .line 64
    invoke-virtual {v3, v1}, Lcm/aptoide/pt/database/realm/Rollback;->setConfirmed(Z)V

    .line 65
    invoke-virtual {v0}, Lcm/aptoide/pt/database/realm/Rollback$Action;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcm/aptoide/pt/database/realm/Rollback;->setAction(Ljava/lang/String;)V

    .line 67
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcm/aptoide/pt/database/realm/Rollback;->setAppName(Ljava/lang/String;)V

    .line 68
    const-string v0, "version"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcm/aptoide/pt/database/realm/Rollback;->setVersionName(Ljava/lang/String;)V

    .line 69
    const-string v0, "package_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcm/aptoide/pt/database/realm/Rollback;->setPackageName(Ljava/lang/String;)V

    .line 70
    const-string v0, "md5"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcm/aptoide/pt/database/realm/Rollback;->setMd5(Ljava/lang/String;)V

    .line 72
    const-string v0, "timestamp"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 74
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcm/aptoide/pt/database/realm/Rollback;->setTimestamp(J)V

    .line 77
    :cond_1
    const-string v0, "confirmed"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcm/aptoide/pt/database/realm/Rollback;->setConfirmed(Z)V

    .line 79
    const-string v0, "icon_path"

    .line 80
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->cleanImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v3, v0}, Lcm/aptoide/pt/database/realm/Rollback;->setIconPath(Ljava/lang/String;)V

    move-object v0, v3

    .line 86
    :goto_1
    return-object v0

    :cond_2
    move v0, v2

    .line 77
    goto :goto_0

    .line 86
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "rollbacktbl"

    return-object v0
.end method
