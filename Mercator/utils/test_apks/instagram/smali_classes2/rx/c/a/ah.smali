.class public final Lrx/c/a/ah;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/d$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/ah$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/d$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lrx/g;

.field private final b:Z

.field private final c:I


# direct methods
.method public constructor <init>(Lrx/g;ZI)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lrx/c/a/ah;->a:Lrx/g;

    .line 61
    iput-boolean p2, p0, Lrx/c/a/ah;->b:Z

    .line 62
    if-lez p3, :cond_0

    :goto_0
    iput p3, p0, Lrx/c/a/ah;->c:I

    .line 63
    return-void

    .line 62
    :cond_0
    sget p3, Lrx/c/e/h;->b:I

    goto :goto_0
.end method


# virtual methods
.method public a(Lrx/j;)Lrx/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TT;>;)",
            "Lrx/j",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lrx/c/a/ah;->a:Lrx/g;

    instance-of v0, v0, Lrx/c/c/c;

    if-eqz v0, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-object p1

    .line 70
    :cond_1
    iget-object v0, p0, Lrx/c/a/ah;->a:Lrx/g;

    instance-of v0, v0, Lrx/c/c/j;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lrx/c/a/ah$a;

    iget-object v1, p0, Lrx/c/a/ah;->a:Lrx/g;

    iget-boolean v2, p0, Lrx/c/a/ah;->b:Z

    iget v3, p0, Lrx/c/a/ah;->c:I

    invoke-direct {v0, v1, p1, v2, v3}, Lrx/c/a/ah$a;-><init>(Lrx/g;Lrx/j;ZI)V

    .line 75
    invoke-virtual {v0}, Lrx/c/a/ah$a;->a()V

    move-object p1, v0

    .line 76
    goto :goto_0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 40
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/c/a/ah;->a(Lrx/j;)Lrx/j;

    move-result-object v0

    return-object v0
.end method
