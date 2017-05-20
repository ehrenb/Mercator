.class abstract Lrx/c/e/b/e;
.super Lrx/c/e/b/g;
.source "SpmcArrayQueue.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/c/e/b/g",
        "<TE;>;"
    }
.end annotation


# static fields
.field protected static final d:J


# instance fields
.field private volatile consumerIndex:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-class v0, Lrx/c/e/b/e;

    const-string v1, "consumerIndex"

    invoke-static {v0, v1}, Lrx/c/e/b/s;->a(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lrx/c/e/b/e;->d:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lrx/c/e/b/g;-><init>(I)V

    .line 66
    return-void
.end method


# virtual methods
.method protected final a()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lrx/c/e/b/e;->consumerIndex:J

    return-wide v0
.end method

.method protected final b(JJ)Z
    .locals 9

    .prologue
    .line 73
    sget-object v0, Lrx/c/e/b/s;->a:Lsun/misc/Unsafe;

    sget-wide v2, Lrx/c/e/b/e;->d:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method
