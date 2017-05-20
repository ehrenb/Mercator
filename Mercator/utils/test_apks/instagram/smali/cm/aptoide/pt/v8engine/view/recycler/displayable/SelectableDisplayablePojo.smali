.class public abstract Lcm/aptoide/pt/v8engine/view/recycler/displayable/SelectableDisplayablePojo;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;
.source "SelectableDisplayablePojo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private selected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;-><init>(Ljava/lang/Object;)V

    .line 20
    return-void
.end method


# virtual methods
.method public isSelected()Z
    .locals 1

    .prologue
    .line 23
    iget-boolean v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SelectableDisplayablePojo;->selected:Z

    return v0
.end method

.method public setSelected(Z)V
    .locals 0

    .prologue
    .line 27
    iput-boolean p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/SelectableDisplayablePojo;->selected:Z

    .line 28
    return-void
.end method
