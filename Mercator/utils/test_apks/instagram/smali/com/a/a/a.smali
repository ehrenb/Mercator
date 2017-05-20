.class public Lcom/a/a/a;
.super Lio/fabric/sdk/android/h;
.source "Crashlytics.java"

# interfaces
.implements Lio/fabric/sdk/android/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/fabric/sdk/android/h",
        "<",
        "Ljava/lang/Void;",
        ">;",
        "Lio/fabric/sdk/android/i;"
    }
.end annotation


# instance fields
.field public final a:Lcom/a/a/a/a;

.field public final b:Lcom/a/a/b/c;

.field public final c:Lcom/a/a/c/f;

.field public final d:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 29
    new-instance v0, Lcom/a/a/a/a;

    invoke-direct {v0}, Lcom/a/a/a/a;-><init>()V

    new-instance v1, Lcom/a/a/b/c;

    invoke-direct {v1}, Lcom/a/a/b/c;-><init>()V

    new-instance v2, Lcom/a/a/c/f;

    invoke-direct {v2}, Lcom/a/a/c/f;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/a/a/a;-><init>(Lcom/a/a/a/a;Lcom/a/a/b/c;Lcom/a/a/c/f;)V

    .line 30
    return-void
.end method

.method constructor <init>(Lcom/a/a/a/a;Lcom/a/a/b/c;Lcom/a/a/c/f;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lio/fabric/sdk/android/h;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/a/a/a;->a:Lcom/a/a/a/a;

    .line 34
    iput-object p2, p0, Lcom/a/a/a;->b:Lcom/a/a/b/c;

    .line 35
    iput-object p3, p0, Lcom/a/a/a;->c:Lcom/a/a/c/f;

    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Lio/fabric/sdk/android/h;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/a;->d:Ljava/util/Collection;

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lcom/a/a/a;->g()V

    .line 267
    invoke-static {}, Lcom/a/a/a;->e()Lcom/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/a;->c:Lcom/a/a/c/f;

    invoke-virtual {v0, p0, p1}, Lcom/a/a/c/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 207
    invoke-static {}, Lcom/a/a/a;->g()V

    .line 208
    invoke-static {}, Lcom/a/a/a;->e()Lcom/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/a/a/a;->c:Lcom/a/a/c/f;

    invoke-virtual {v0, p0}, Lcom/a/a/c/f;->a(Ljava/lang/Throwable;)V

    .line 209
    return-void
.end method

.method public static e()Lcom/a/a/a;
    .locals 1

    .prologue
    .line 188
    const-class v0, Lcom/a/a/a;

    invoke-static {v0}, Lio/fabric/sdk/android/c;->a(Ljava/lang/Class;)Lio/fabric/sdk/android/h;

    move-result-object v0

    check-cast v0, Lcom/a/a/a;

    return-object v0
.end method

.method private static g()V
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lcom/a/a/a;->e()Lcom/a/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Crashlytics must be initialized by calling Fabric.with(Context) prior to calling Crashlytics.getInstance()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "2.6.5.151"

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string v0, "com.crashlytics.sdk.android:crashlytics"

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Lio/fabric/sdk/android/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/a/a/a;->d:Ljava/util/Collection;

    return-object v0
.end method

.method protected d()Ljava/lang/Void;
    .locals 1

    .prologue
    .line 181
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic f()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/a/a/a;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
