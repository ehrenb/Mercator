.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/CreateStoreDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.source "CreateStoreDisplayable.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    return-void
.end method


# virtual methods
.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 12
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    invoke-direct {v0, p0, v1, v1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 16
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->create_store_displayable_layout:I

    return v0
.end method
