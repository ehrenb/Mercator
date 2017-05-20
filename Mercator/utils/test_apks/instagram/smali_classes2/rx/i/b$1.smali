.class Lrx/i/b$1;
.super Ljava/lang/Object;
.source "SerializedSubject.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/i/b;-><init>(Lrx/i/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/i/c;


# direct methods
.method constructor <init>(Lrx/i/c;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lrx/i/b$1;->a:Lrx/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-TR;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lrx/i/b$1;->a:Lrx/i/c;

    invoke-virtual {v0, p1}, Lrx/i/c;->a(Lrx/j;)Lrx/k;

    .line 48
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 43
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lrx/i/b$1;->a(Lrx/j;)V

    return-void
.end method
