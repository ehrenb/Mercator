.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.source "StoreGridHeaderDisplayable.java"


# instance fields
.field private moreVisible:Z

.field private final storeTheme:Ljava/lang/String;

.field private final tag:Ljava/lang/String;

.field private final wsWidget:Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0, v0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;-><init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 22
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;->wsWidget:Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    .line 23
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;->storeTheme:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;->tag:Ljava/lang/String;

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;->moreVisible:Z

    .line 26
    return-void
.end method


# virtual methods
.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 33
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getStoreTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;->storeTheme:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->displayable_grid_header:I

    return v0
.end method

.method public getWsWidget()Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;->wsWidget:Lcm/aptoide/pt/model/v7/GetStoreWidgets$WSWidget;

    return-object v0
.end method

.method public isMoreVisible()Z
    .locals 1

    .prologue
    .line 14
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;->moreVisible:Z

    return v0
.end method

.method public setMoreVisible(Z)V
    .locals 0

    .prologue
    .line 14
    iput-boolean p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/StoreGridHeaderDisplayable;->moreVisible:Z

    return-void
.end method
