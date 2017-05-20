.class Lrx/c/a/m$1;
.super Ljava/lang/Object;
.source "OnSubscribeFlattenIterable.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/m;->a(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/c/a/m$a;

.field final synthetic b:Lrx/c/a/m;


# direct methods
.method constructor <init>(Lrx/c/a/m;Lrx/c/a/m$a;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lrx/c/a/m$1;->b:Lrx/c/a/m;

    iput-object p2, p0, Lrx/c/a/m$1;->a:Lrx/c/a/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lrx/c/a/m$1;->a:Lrx/c/a/m$a;

    invoke-virtual {v0, p1, p2}, Lrx/c/a/m$a;->a(J)V

    .line 63
    return-void
.end method
