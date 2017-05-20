.class Lrx/a$10;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a;->b(Lrx/g;)Lrx/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/g;

.field final synthetic b:Lrx/a;


# direct methods
.method constructor <init>(Lrx/a;Lrx/g;)V
    .locals 0

    .prologue
    .line 2138
    iput-object p1, p0, Lrx/a$10;->b:Lrx/a;

    iput-object p2, p0, Lrx/a$10;->a:Lrx/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/b;)V
    .locals 2

    .prologue
    .line 2143
    iget-object v0, p0, Lrx/a$10;->a:Lrx/g;

    invoke-virtual {v0}, Lrx/g;->a()Lrx/g$a;

    move-result-object v0

    .line 2145
    new-instance v1, Lrx/a$10$1;

    invoke-direct {v1, p0, p1, v0}, Lrx/a$10$1;-><init>(Lrx/a$10;Lrx/b;Lrx/g$a;)V

    invoke-virtual {v0, v1}, Lrx/g$a;->a(Lrx/b/a;)Lrx/k;

    .line 2155
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2138
    check-cast p1, Lrx/b;

    invoke-virtual {p0, p1}, Lrx/a$10;->a(Lrx/b;)V

    return-void
.end method
