.class Lrx/c/a/h$1;
.super Ljava/lang/Object;
.source "OnSubscribeConcatMap.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/h;->a(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/c/a/h$c;

.field final synthetic b:Lrx/c/a/h;


# direct methods
.method constructor <init>(Lrx/c/a/h;Lrx/c/a/h$c;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lrx/c/a/h$1;->b:Lrx/c/a/h;

    iput-object p2, p0, Lrx/c/a/h$1;->a:Lrx/c/a/h$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lrx/c/a/h$1;->a:Lrx/c/a/h$c;

    invoke-virtual {v0, p1, p2}, Lrx/c/a/h$c;->a(J)V

    .line 90
    return-void
.end method
