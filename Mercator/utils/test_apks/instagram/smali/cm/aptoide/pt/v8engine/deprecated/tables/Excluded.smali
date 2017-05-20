.class public Lcm/aptoide/pt/v8engine/deprecated/tables/Excluded;
.super Lcm/aptoide/pt/v8engine/deprecated/tables/BaseTable;
.source "Excluded.java"


# static fields
.field public static final COLUMN_ICONPATH:Ljava/lang/String; = "iconpath"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final COLUMN_VERCODE:Ljava/lang/String; = "vercode"

.field public static final COLUMN_VERNAME:Ljava/lang/String; = "version_name"

.field private static final NAME:Ljava/lang/String; = "excluded"


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
    .line 39
    new-instance v0, Lcm/aptoide/pt/database/realm/Update;

    invoke-direct {v0}, Lcm/aptoide/pt/database/realm/Update;-><init>()V

    .line 41
    const-string v1, "package_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Update;->setPackageName(Ljava/lang/String;)V

    .line 42
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Update;->setLabel(Ljava/lang/String;)V

    .line 43
    const-string v1, "vercode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Update;->setVersionCode(I)V

    .line 44
    const-string v1, "version_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Update;->setUpdateVersionName(Ljava/lang/String;)V

    .line 45
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Update;->setExcluded(Z)V

    .line 47
    const-string v1, "iconpath"

    .line 48
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lcm/aptoide/pt/utils/AptoideUtils$IconSizeU;->cleanImageUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lcm/aptoide/pt/database/realm/Update;->setIcon(Ljava/lang/String;)V

    .line 53
    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "excluded"

    return-object v0
.end method
