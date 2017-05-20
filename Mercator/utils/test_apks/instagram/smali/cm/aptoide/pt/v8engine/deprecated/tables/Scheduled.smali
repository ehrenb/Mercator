.class public Lcm/aptoide/pt/v8engine/deprecated/tables/Scheduled;
.super Lcm/aptoide/pt/v8engine/deprecated/tables/BaseTable;
.source "Scheduled.java"


# static fields
.field public static final COLUMN_ICON:Ljava/lang/String; = "icon"

.field public static final COLUMN_MD5:Ljava/lang/String; = "md5"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final COLUMN_REPO:Ljava/lang/String; = "repo_name"

.field public static final COLUMN_VERSION_NAME:Ljava/lang/String; = "version_name"

.field private static final NAME:Ljava/lang/String; = "scheduled"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/deprecated/tables/BaseTable;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Landroid/database/Cursor;)Lio/realm/ad;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcm/aptoide/pt/database/realm/Scheduled;

    invoke-direct {v0}, Lcm/aptoide/pt/database/realm/Scheduled;-><init>()V

    .line 38
    const-string v1, "md5"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Scheduled;->setMd5(Ljava/lang/String;)V

    .line 39
    const-string v1, "package_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Scheduled;->setPackageName(Ljava/lang/String;)V

    .line 40
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Scheduled;->setName(Ljava/lang/String;)V

    .line 41
    const-string v1, "version_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Scheduled;->setVersionName(Ljava/lang/String;)V

    .line 42
    const-string v1, "repo_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Scheduled;->setStoreName(Ljava/lang/String;)V

    .line 43
    const-string v1, "icon"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Scheduled;->setIcon(Ljava/lang/String;)V

    .line 45
    const-string v1, "icon"

    .line 46
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->cleanImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Scheduled;->setIcon(Ljava/lang/String;)V

    .line 48
    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    const-string v0, "scheduled"

    return-object v0
.end method
