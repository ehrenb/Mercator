.class public Lcm/aptoide/pt/util/schedulers/ConcreteSchedulerProvider;
.super Ljava/lang/Object;
.source "ConcreteSchedulerProvider.java"

# interfaces
.implements Lcm/aptoide/pt/util/schedulers/SchedulerProvider;


# static fields
.field private static INSTANCE:Lcm/aptoide/pt/util/schedulers/ConcreteSchedulerProvider;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static declared-synchronized getInstance()Lcm/aptoide/pt/util/schedulers/ConcreteSchedulerProvider;
    .locals 2

    .prologue
    .line 19
    const-class v1, Lcm/aptoide/pt/util/schedulers/ConcreteSchedulerProvider;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcm/aptoide/pt/util/schedulers/ConcreteSchedulerProvider;->INSTANCE:Lcm/aptoide/pt/util/schedulers/ConcreteSchedulerProvider;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcm/aptoide/pt/util/schedulers/ConcreteSchedulerProvider;

    invoke-direct {v0}, Lcm/aptoide/pt/util/schedulers/ConcreteSchedulerProvider;-><init>()V

    sput-object v0, Lcm/aptoide/pt/util/schedulers/ConcreteSchedulerProvider;->INSTANCE:Lcm/aptoide/pt/util/schedulers/ConcreteSchedulerProvider;

    .line 22
    :cond_0
    sget-object v0, Lcm/aptoide/pt/util/schedulers/ConcreteSchedulerProvider;->INSTANCE:Lcm/aptoide/pt/util/schedulers/ConcreteSchedulerProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 19
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public computation()Lrx/g;
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lrx/g/a;->c()Lrx/g;

    move-result-object v0

    return-object v0
.end method

.method public io()Lrx/g;
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v0

    return-object v0
.end method

.method public ui()Lrx/g;
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v0

    return-object v0
.end method
