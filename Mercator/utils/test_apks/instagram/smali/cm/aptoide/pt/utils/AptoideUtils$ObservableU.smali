.class public Lcm/aptoide/pt/utils/AptoideUtils$ObservableU;
.super Ljava/lang/Object;
.source "AptoideUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/utils/AptoideUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ObservableU"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1640
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applySchedulers()Lrx/d$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/d$c",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 1649
    invoke-static {}, Lcm/aptoide/pt/utils/AptoideUtils$ObservableU$$Lambda$1;->lambdaFactory$()Lrx/d$c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$applySchedulers$0(Lrx/d;)Lrx/d;
    .locals 2

    .prologue
    .line 1649
    invoke-static {}, Lrx/g/a;->d()Lrx/g;

    move-result-object v0

    invoke-virtual {p0, v0}, Lrx/d;->b(Lrx/g;)Lrx/d;

    move-result-object v0

    .line 1650
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v0

    return-object v0
.end method
