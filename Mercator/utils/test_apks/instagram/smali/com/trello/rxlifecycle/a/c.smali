.class public Lcom/trello/rxlifecycle/a/c;
.super Ljava/lang/Object;
.source "RxLifecycleAndroid.java"


# static fields
.field private static final a:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Lcom/trello/rxlifecycle/a/a;",
            "Lcom/trello/rxlifecycle/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lrx/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/b/e",
            "<",
            "Lcom/trello/rxlifecycle/a/b;",
            "Lcom/trello/rxlifecycle/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/trello/rxlifecycle/a/c$1;

    invoke-direct {v0}, Lcom/trello/rxlifecycle/a/c$1;-><init>()V

    sput-object v0, Lcom/trello/rxlifecycle/a/c;->a:Lrx/b/e;

    .line 129
    new-instance v0, Lcom/trello/rxlifecycle/a/c$2;

    invoke-direct {v0}, Lcom/trello/rxlifecycle/a/c$2;-><init>()V

    sput-object v0, Lcom/trello/rxlifecycle/a/c;->b:Lrx/b/e;

    return-void
.end method

.method public static a(Lrx/d;)Lcom/trello/rxlifecycle/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<",
            "Lcom/trello/rxlifecycle/a/a;",
            ">;)",
            "Lcom/trello/rxlifecycle/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lcom/trello/rxlifecycle/a/c;->a:Lrx/b/e;

    invoke-static {p0, v0}, Lcom/trello/rxlifecycle/c;->a(Lrx/d;Lrx/b/e;)Lcom/trello/rxlifecycle/b;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lrx/d;)Lcom/trello/rxlifecycle/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/d",
            "<",
            "Lcom/trello/rxlifecycle/a/b;",
            ">;)",
            "Lcom/trello/rxlifecycle/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    sget-object v0, Lcom/trello/rxlifecycle/a/c;->b:Lrx/b/e;

    invoke-static {p0, v0}, Lcom/trello/rxlifecycle/c;->a(Lrx/d;Lrx/b/e;)Lcom/trello/rxlifecycle/b;

    move-result-object v0

    return-object v0
.end method
