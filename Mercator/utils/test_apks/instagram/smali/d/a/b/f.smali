.class abstract Ld/a/b/f;
.super Ljava/lang/Object;
.source "NamedLoggerBase.java"

# interfaces
.implements Ld/a/b;
.implements Ljava/io/Serializable;


# instance fields
.field protected b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Ld/a/b/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Ld/a/b/f;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    return-object v0
.end method
