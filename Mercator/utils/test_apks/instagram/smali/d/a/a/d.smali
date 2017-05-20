.class public Ld/a/a/d;
.super Ljava/lang/Object;
.source "SubstituteLoggingEvent.java"

# interfaces
.implements Ld/a/a/c;


# instance fields
.field a:Ld/a/a/b;

.field b:Ljava/lang/String;

.field c:Ld/a/b/g;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;

.field f:[Ljava/lang/Object;

.field g:J

.field h:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ld/a/b/g;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Ld/a/a/d;->c:Ld/a/b/g;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 71
    iput-wide p1, p0, Ld/a/a/d;->g:J

    .line 72
    return-void
.end method

.method public a(Ld/a/a/b;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Ld/a/a/d;->a:Ld/a/a/b;

    .line 24
    return-void
.end method

.method public a(Ld/a/b/g;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Ld/a/a/d;->c:Ld/a/b/g;

    .line 48
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Ld/a/a/d;->b:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Ld/a/a/d;->h:Ljava/lang/Throwable;

    .line 88
    return-void
.end method

.method public a([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Ld/a/a/d;->f:[Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Ld/a/a/d;->e:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Ld/a/a/d;->d:Ljava/lang/String;

    .line 80
    return-void
.end method
