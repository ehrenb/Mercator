.class public Lb/a/a/p;
.super Lb/a/c;
.source "ServiceEventImpl.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lb/a/d;


# direct methods
.method public constructor <init>(Lb/a/a/l;Ljava/lang/String;Ljava/lang/String;Lb/a/d;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lb/a/c;-><init>(Ljava/lang/Object;)V

    .line 52
    iput-object p2, p0, Lb/a/a/p;->a:Ljava/lang/String;

    .line 53
    iput-object p3, p0, Lb/a/a/p;->b:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Lb/a/a/p;->c:Lb/a/d;

    .line 55
    return-void
.end method


# virtual methods
.method public a()Lb/a/a;
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lb/a/a/p;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lb/a/a/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lb/a/a/p;->b:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0}, Lb/a/a/p;->f()Lb/a/a/p;

    move-result-object v0

    return-object v0
.end method

.method public d()Lb/a/d;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lb/a/a/p;->c:Lb/a/d;

    return-object v0
.end method

.method public synthetic e()Lb/a/c;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lb/a/a/p;->f()Lb/a/a/p;

    move-result-object v0

    return-object v0
.end method

.method public f()Lb/a/a/p;
    .locals 5

    .prologue
    .line 120
    new-instance v1, Lb/a/a/q;

    invoke-virtual {p0}, Lb/a/a/p;->d()Lb/a/d;

    move-result-object v0

    invoke-direct {v1, v0}, Lb/a/a/q;-><init>(Lb/a/d;)V

    .line 121
    new-instance v2, Lb/a/a/p;

    invoke-virtual {p0}, Lb/a/a/p;->a()Lb/a/a;

    move-result-object v0

    check-cast v0, Lb/a/a/l;

    invoke-virtual {p0}, Lb/a/a/p;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lb/a/a/p;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v0, v3, v4, v1}, Lb/a/a/p;-><init>(Lb/a/a/l;Ljava/lang/String;Ljava/lang/String;Lb/a/d;)V

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, "\n\tname: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0}, Lb/a/a/p;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "\' type: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Lb/a/a/p;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "\' info: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Lb/a/a/p;->d()Lb/a/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    const-string v1, "\']"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
