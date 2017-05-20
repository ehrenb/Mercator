.class Lio/realm/internal/async/c$b$c;
.super Ljava/lang/Object;
.source "QueryUpdateTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/internal/async/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field final a:Ljava/lang/ref/WeakReference;

.field b:J

.field final c:Lio/realm/internal/async/a;


# direct methods
.method private constructor <init>(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/a;)V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p1, p0, Lio/realm/internal/async/c$b$c;->a:Ljava/lang/ref/WeakReference;

    .line 345
    iput-wide p2, p0, Lio/realm/internal/async/c$b$c;->b:J

    .line 346
    iput-object p4, p0, Lio/realm/internal/async/c$b$c;->c:Lio/realm/internal/async/a;

    .line 347
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/a;Lio/realm/internal/async/c$1;)V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0, p1, p2, p3, p4}, Lio/realm/internal/async/c$b$c;-><init>(Ljava/lang/ref/WeakReference;JLio/realm/internal/async/a;)V

    return-void
.end method
