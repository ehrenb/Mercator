.class public Ld/a/b/a;
.super Ljava/lang/Object;
.source "FormattingTuple.java"


# static fields
.field public static a:Ld/a/b/a;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Throwable;

.field private d:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    new-instance v0, Ld/a/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld/a/b/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Ld/a/b/a;->a:Ld/a/b/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, v0, v0}, Ld/a/b/a;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Ld/a/b/a;->b:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Ld/a/b/a;->c:Ljava/lang/Throwable;

    .line 47
    iput-object p2, p0, Ld/a/b/a;->d:[Ljava/lang/Object;

    .line 48
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Ld/a/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Ld/a/b/a;->c:Ljava/lang/Throwable;

    return-object v0
.end method
