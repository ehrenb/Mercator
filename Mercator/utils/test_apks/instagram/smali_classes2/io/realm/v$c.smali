.class Lio/realm/v$c;
.super Ljava/lang/Object;
.source "RealmCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lio/realm/a;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lio/realm/v$c;->a:Ljava/lang/ThreadLocal;

    .line 52
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lio/realm/v$c;->b:Ljava/lang/ThreadLocal;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lio/realm/v$c;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lio/realm/v$1;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lio/realm/v$c;-><init>()V

    return-void
.end method

.method static synthetic a(Lio/realm/v$c;)Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/realm/v$c;->a:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic b(Lio/realm/v$c;)Ljava/lang/ThreadLocal;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lio/realm/v$c;->b:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic c(Lio/realm/v$c;)I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lio/realm/v$c;->c:I

    return v0
.end method

.method static synthetic d(Lio/realm/v$c;)I
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lio/realm/v$c;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/realm/v$c;->c:I

    return v0
.end method

.method static synthetic e(Lio/realm/v$c;)I
    .locals 2

    .prologue
    .line 48
    iget v0, p0, Lio/realm/v$c;->c:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lio/realm/v$c;->c:I

    return v0
.end method
