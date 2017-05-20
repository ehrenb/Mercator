.class public final Lb/a/b$a;
.super Ljava/lang/Object;
.source "NetworkTopologyDiscovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b$a$a;
    }
.end annotation


# static fields
.field private static volatile a:Lb/a/b;

.field private static final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lb/a/b$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lb/a/b$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method protected static a()Lb/a/b;
    .locals 2

    .prologue
    .line 109
    const/4 v1, 0x0

    .line 110
    sget-object v0, Lb/a/b$a;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/b$a$a;

    .line 111
    if-eqz v0, :cond_1

    .line 112
    invoke-interface {v0}, Lb/a/b$a$a;->a()Lb/a/b;

    move-result-object v0

    .line 114
    :goto_0
    if-eqz v0, :cond_0

    :goto_1
    return-object v0

    :cond_0
    new-instance v0, Lb/a/a/o;

    invoke-direct {v0}, Lb/a/a/o;-><init>()V

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static b()Lb/a/b;
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lb/a/b$a;->a:Lb/a/b;

    if-nez v0, :cond_1

    .line 124
    const-class v1, Lb/a/b$a;

    monitor-enter v1

    .line 125
    :try_start_0
    sget-object v0, Lb/a/b$a;->a:Lb/a/b;

    if-nez v0, :cond_0

    .line 126
    invoke-static {}, Lb/a/b$a;->a()Lb/a/b;

    move-result-object v0

    sput-object v0, Lb/a/b$a;->a:Lb/a/b;

    .line 128
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_1
    sget-object v0, Lb/a/b$a;->a:Lb/a/b;

    return-object v0

    .line 128
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
