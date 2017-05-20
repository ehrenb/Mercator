.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MyStoreDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.source "MyStoreDisplayable.java"


# instance fields
.field private meta:Lcm/aptoide/pt/model/v7/store/GetStoreMeta;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/store/GetStoreMeta;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MyStoreDisplayable;->meta:Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    .line 20
    return-void
.end method


# virtual methods
.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 23
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getMeta()Lcm/aptoide/pt/model/v7/store/GetStoreMeta;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/MyStoreDisplayable;->meta:Lcm/aptoide/pt/model/v7/store/GetStoreMeta;

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 27
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->my_store_displayable_layout:I

    return v0
.end method
