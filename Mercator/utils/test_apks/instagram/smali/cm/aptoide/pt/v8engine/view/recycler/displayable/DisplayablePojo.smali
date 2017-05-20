.class public abstract Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;
.super Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;
.source "DisplayablePojo.java"


# annotations
.annotation runtime Lcm/aptoide/pt/annotation/Ignore;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;"
    }
.end annotation


# instance fields
.field private pojo:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 25
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
    .line 27
    invoke-direct {p0}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;-><init>()V

    .line 28
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;->pojo:Ljava/lang/Object;

    .line 29
    return-void
.end method


# virtual methods
.method public getPojo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 19
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;->pojo:Ljava/lang/Object;

    return-object v0
.end method

.method public setPojo(Ljava/lang/Object;)Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 19
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/view/recycler/displayable/DisplayablePojo;->pojo:Ljava/lang/Object;

    return-object p0
.end method
