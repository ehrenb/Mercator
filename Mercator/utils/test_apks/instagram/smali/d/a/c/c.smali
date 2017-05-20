.class public Ld/a/c/c;
.super Ljava/lang/Object;
.source "StaticLoggerBinder.java"


# static fields
.field public static a:Ljava/lang/String;

.field private static final b:Ld/a/c/c;

.field private static final c:Ljava/lang/String;


# instance fields
.field private final d:Ld/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Ld/a/c/c;

    invoke-direct {v0}, Ld/a/c/c;-><init>()V

    sput-object v0, Ld/a/c/c;->b:Ld/a/c/c;

    .line 60
    const-string v0, "1.6.99"

    sput-object v0, Ld/a/c/c;->a:Ljava/lang/String;

    .line 62
    const-class v0, Ld/a/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ld/a/c/c;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ld/a/c/b;

    invoke-direct {v0}, Ld/a/c/b;-><init>()V

    iput-object v0, p0, Ld/a/c/c;->d:Ld/a/a;

    .line 72
    return-void
.end method

.method public static final a()Ld/a/c/c;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Ld/a/c/c;->b:Ld/a/c/c;

    return-object v0
.end method


# virtual methods
.method public b()Ld/a/a;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Ld/a/c/c;->d:Ld/a/a;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Ld/a/c/c;->c:Ljava/lang/String;

    return-object v0
.end method
