.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;
.source "GridAppDisplayable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo",
        "<",
        "Lcm/aptoide/pt/model/v7/listapp/App;",
        ">;"
    }
.end annotation


# instance fields
.field private tag:Ljava/lang/String;

.field private totalDownloads:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/listapp/App;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>(Ljava/lang/Object;)V

    .line 30
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;->tag:Ljava/lang/String;

    .line 31
    iput-boolean p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;->totalDownloads:Z

    .line 32
    return-void
.end method


# virtual methods
.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    sget-object v1, Lcm/aptoide/pt/model/v7/Type;->APPS_GROUP:Lcm/aptoide/pt/model/v7/Type;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Type;->getDefaultPerLineCount()I

    move-result v1

    sget-object v2, Lcm/aptoide/pt/model/v7/Type;->APPS_GROUP:Lcm/aptoide/pt/model/v7/Type;

    .line 36
    invoke-virtual {v2}, Lcm/aptoide/pt/model/v7/Type;->isFixedPerLineCount()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_grid_app:I

    return v0
.end method

.method public isTotalDownloads()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridAppDisplayable;->totalDownloads:Z

    return v0
.end method
