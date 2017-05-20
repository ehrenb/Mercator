.class public final Lrx/c/a/f;
.super Ljava/lang/Object;
.source "NotificationLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/a/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lrx/c/a/f$1;

    invoke-direct {v0}, Lrx/c/a/f$1;-><init>()V

    sput-object v0, Lrx/c/a/f;->a:Ljava/lang/Object;

    .line 45
    new-instance v0, Lrx/c/a/f$2;

    invoke-direct {v0}, Lrx/c/a/f$2;-><init>()V

    sput-object v0, Lrx/c/a/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lrx/c/a/f;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 79
    sget-object p0, Lrx/c/a/f;->b:Ljava/lang/Object;

    .line 81
    :cond_0
    return-object p0
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lrx/c/a/f$a;

    invoke-direct {v0, p0}, Lrx/c/a/f$a;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Lrx/e;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/e",
            "<-TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 124
    sget-object v2, Lrx/c/a/f;->a:Ljava/lang/Object;

    if-ne p1, v2, :cond_0

    .line 125
    invoke-interface {p0}, Lrx/e;->onCompleted()V

    .line 136
    :goto_0
    return v0

    .line 127
    :cond_0
    sget-object v2, Lrx/c/a/f;->b:Ljava/lang/Object;

    if-ne p1, v2, :cond_1

    .line 128
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lrx/e;->onNext(Ljava/lang/Object;)V

    move v0, v1

    .line 129
    goto :goto_0

    .line 130
    :cond_1
    if-eqz p1, :cond_3

    .line 131
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lrx/c/a/f$a;

    if-ne v2, v3, :cond_2

    .line 132
    check-cast p1, Lrx/c/a/f$a;

    iget-object v1, p1, Lrx/c/a/f$a;->a:Ljava/lang/Throwable;

    invoke-interface {p0, v1}, Lrx/e;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 135
    :cond_2
    invoke-interface {p0, p1}, Lrx/e;->onNext(Ljava/lang/Object;)V

    move v0, v1

    .line 136
    goto :goto_0

    .line 138
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The lite notification can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 150
    sget-object v0, Lrx/c/a/f;->a:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 161
    instance-of v0, p0, Lrx/c/a/f$a;

    return v0
.end method

.method public static d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 194
    sget-object v0, Lrx/c/a/f;->b:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public static e(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 207
    check-cast p0, Lrx/c/a/f$a;

    iget-object v0, p0, Lrx/c/a/f$a;->a:Ljava/lang/Throwable;

    return-object v0
.end method
