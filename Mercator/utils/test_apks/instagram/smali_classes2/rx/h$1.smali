.class final Lrx/h$1;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/h;->a(Ljava/lang/Throwable;)Lrx/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/h$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 456
    iput-object p1, p0, Lrx/h$1;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/i",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 460
    iget-object v0, p0, Lrx/h$1;->a:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Lrx/i;->a(Ljava/lang/Throwable;)V

    .line 461
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 456
    check-cast p1, Lrx/i;

    invoke-virtual {p0, p1}, Lrx/h$1;->a(Lrx/i;)V

    return-void
.end method
