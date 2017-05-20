.class public Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;
.source "ExcludedUpdateDisplayable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo",
        "<",
        "Lcm/aptoide/pt/database/realm/Update;",
        ">;"
    }
.end annotation


# instance fields
.field private selected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcm/aptoide/pt/database/realm/Update;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>(Ljava/lang/Object;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected getConfig()Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable$Configs;-><init>(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;IZ)V

    return-object v0
.end method

.method public getViewLayout()I
    .locals 1

    .prologue
    .line 31
    sget v0, Lcm/aptoide/pt/v8engine/R$layout;->row_excluded_update:I

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;->selected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    .prologue
    .line 39
    iput-boolean p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/grid/ExcludedUpdateDisplayable;->selected:Z

    .line 40
    return-void
.end method
