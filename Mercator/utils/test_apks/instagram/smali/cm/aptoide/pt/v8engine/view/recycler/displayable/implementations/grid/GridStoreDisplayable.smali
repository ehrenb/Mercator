.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridStoreDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;
.source "GridStoreDisplayable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo",
        "<",
        "Lcm/aptoide/pt/model/v7/store/Store;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>()V

    .line 23
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/store/Store;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>(Ljava/lang/Object;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    sget-object v1, Lcm/aptoide/pt/model/v7/Type;->STORES_GROUP:Lcm/aptoide/pt/model/v7/Type;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Type;->getDefaultPerLineCount()I

    move-result v1

    sget-object v2, Lcm/aptoide/pt/model/v7/Type;->STORES_GROUP:Lcm/aptoide/pt/model/v7/Type;

    .line 27
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Type;->isFixedPerLineCount()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_grid_store:I

    return v0
.end method
