.class public Lio/realm/internal/async/c$c;
.super Ljava/lang/Object;
.source "QueryUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/async/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/ag",
            "<+",
            "Lio/realm/ac;",
            ">;>;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lio/realm/internal/j;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lio/realm/internal/SharedGroup$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lio/realm/internal/async/c$c;
    .locals 3

    .prologue
    .line 223
    new-instance v0, Lio/realm/internal/async/c$c;

    invoke-direct {v0}, Lio/realm/internal/async/c$c;-><init>()V

    .line 224
    new-instance v1, Ljava/util/IdentityHashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v1, v0, Lio/realm/internal/async/c$c;->a:Ljava/util/IdentityHashMap;

    .line 225
    return-object v0
.end method

.method public static b()Lio/realm/internal/async/c$c;
    .locals 3

    .prologue
    .line 229
    new-instance v0, Lio/realm/internal/async/c$c;

    invoke-direct {v0}, Lio/realm/internal/async/c$c;-><init>()V

    .line 230
    new-instance v1, Ljava/util/IdentityHashMap;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/IdentityHashMap;-><init>(I)V

    iput-object v1, v0, Lio/realm/internal/async/c$c;->b:Ljava/util/IdentityHashMap;

    .line 231
    return-object v0
.end method
