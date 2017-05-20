.class public abstract Lcm/aptoide/pt/handlers/ExtendedView;
.super Ljava/lang/Object;
.source "ExtendedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/handlers/ExtendedView$OnClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcm/aptoide/pt/handlers/ExtendedView;->weakReference:Ljava/lang/ref/WeakReference;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcm/aptoide/pt/handlers/ExtendedView;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcm/aptoide/pt/handlers/ExtendedView;->weakReference:Ljava/lang/ref/WeakReference;

    return-object v0
.end method
