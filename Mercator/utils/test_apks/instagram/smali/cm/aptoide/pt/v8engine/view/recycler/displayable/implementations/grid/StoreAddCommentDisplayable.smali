.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.source "StoreAddCommentDisplayable.java"


# instance fields
.field private final storeId:J

.field private final storeName:Ljava/lang/String;

.field private final storeTheme:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 14
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;->storeId:J

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;->storeName:Ljava/lang/String;

    .line 16
    sget-object v0, Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;->APTOIDE_STORE_THEME_DEFAULT:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;->storeTheme:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 17
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 20
    iput-wide p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;->storeId:J

    .line 21
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;->storeName:Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;->storeTheme:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    .line 23
    return-void
.end method


# virtual methods
.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 34
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getStoreId()J
    .locals 2

    .prologue
    .line 26
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;->storeId:J

    return-wide v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreTheme()Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreAddCommentDisplayable;->storeTheme:Lcm/aptoide/pt/v8engine/util/StoreThemeEnum;

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 38
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_grid_add_store_comment:I

    return v0
.end method
