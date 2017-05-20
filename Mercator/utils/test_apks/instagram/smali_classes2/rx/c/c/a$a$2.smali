.class Lrx/c/c/a$a$2;
.super Ljava/lang/Object;
.source "CachedThreadScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/c/a$a;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/c/c/a$a;


# direct methods
.method constructor <init>(Lrx/c/c/a$a;)V
    .locals 0

    .prologue
    .line 74
    iput-object p1, p0, Lrx/c/c/a$a$2;->a:Lrx/c/c/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lrx/c/c/a$a$2;->a:Lrx/c/c/a$a;

    invoke-virtual {v0}, Lrx/c/c/a$a;->b()V

    .line 78
    return-void
.end method
