.class public Lcm/aptoide/pt/v8engine/deprecated/tables/Repo;
.super Lcm/aptoide/pt/v8engine/deprecated/tables/BaseTable;
.source "Repo.java"


# static fields
.field public static final COLUMN_APK_PATH:Ljava/lang/String; = "apk_path"

.field public static final COLUMN_AVATAR:Ljava/lang/String; = "avatar_url"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_DOWNLOADS:Ljava/lang/String; = "downloads"

.field public static final COLUMN_FAILED:Ljava/lang/String; = "is_failed"

.field public static final COLUMN_FEATURED_GRAPHIC_PATH:Ljava/lang/String; = "featured_graphic_path"

.field public static final COLUMN_HASH:Ljava/lang/String; = "hash"

.field public static final COLUMN_ICONS_PATH:Ljava/lang/String; = "icons_path"

.field public static final COLUMN_ID:Ljava/lang/String; = "id_repo"

.field public static final COLUMN_IS_USER:Ljava/lang/String; = "is_user"

.field public static final COLUMN_ITEMS:Ljava/lang/String; = "items"

.field public static final COLUMN_LATEST_TIMESTAMP:Ljava/lang/String; = "latest_timestamp"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_PASSWORD:Ljava/lang/String; = "password"

.field public static final COLUMN_REPO_NAME:Ljava/lang/String; = "reponame"

.field public static final COLUMN_THEME:Ljava/lang/String; = "theme"

.field public static final COLUMN_TOP_TIMESTAMP:Ljava/lang/String; = "top_timestamp"

.field public static final COLUMN_URL:Ljava/lang/String; = "url"

.field public static final COLUMN_USERNAME:Ljava/lang/String; = "username"

.field public static final COLUMN_VIEW:Ljava/lang/String; = "list"

.field public static final COLUMN_WEBSERVICES_PATH:Ljava/lang/String; = "webservices_path"

.field private static final NAME:Ljava/lang/String; = "repo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/deprecated/tables/BaseTable;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Landroid/database/Cursor;)Lio/realm/ad;
    .locals 4

    .prologue
    .line 86
    new-instance v0, Lcm/aptoide/pt/database/realm/Store;

    invoke-direct {v0}, Lcm/aptoide/pt/database/realm/Store;-><init>()V

    .line 87
    const-string v1, "id_repo"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcm/aptoide/pt/database/realm/Store;->setStoreId(J)V

    .line 88
    const-string v1, "downloads"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcm/aptoide/pt/database/realm/Store;->setDownloads(J)V

    .line 89
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Store;->setStoreName(Ljava/lang/String;)V

    .line 90
    const-string v1, "icons_path"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Store;->setIconPath(Ljava/lang/String;)V

    .line 91
    const-string v1, "password"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Store;->setPasswordSha1(Ljava/lang/String;)V

    .line 92
    const-string v1, "username"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Store;->setUsername(Ljava/lang/String;)V

    .line 93
    const-string v1, "theme"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Store;->setTheme(Ljava/lang/String;)V

    .line 94
    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string v0, "repo"

    return-object v0
.end method
