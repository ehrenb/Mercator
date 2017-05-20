.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.source "StoreLatestCommentsDisplayable.java"


# instance fields
.field private final comments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private final storeId:J

.field private storeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 15
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 16
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;->storeId:J

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;->comments:Ljava/util/List;

    .line 18
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/Comment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 21
    iput-wide p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;->storeId:J

    .line 22
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;->storeName:Ljava/lang/String;

    .line 23
    iput-object p4, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;->comments:Ljava/util/List;

    .line 24
    return-void
.end method


# virtual methods
.method public getComments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcm/aptoide/pt/model/v7/Comment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;->comments:Ljava/util/List;

    return-object v0
.end method

.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 35
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getStoreId()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;->storeId:J

    return-wide v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreLatestCommentsDisplayable;->storeName:Ljava/lang/String;

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_grid_latest_store_comments:I

    return v0
.end method
