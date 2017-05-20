.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;
.source "GridDisplayDisplayable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo",
        "<",
        "Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;",
        ">;"
    }
.end annotation


# instance fields
.field private storeTheme:Ljava/lang/String;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/store/GetStoreDisplays$EventImage;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>(Ljava/lang/Object;)V

    .line 30
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;->storeTheme:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;->tag:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getStoreTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;->storeTheme:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/GridDisplayDisplayable;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_grid_display:I

    return v0
.end method
