.class Lcom/facebook/c/v$c;
.super Lcom/facebook/c/v$d;
.source "NativeProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/c/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/c/v$d;-><init>(Lcom/facebook/c/v$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/c/v$1;)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Lcom/facebook/c/v$c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    const-string v0, "com.facebook.orca"

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 331
    const/4 v0, 0x0

    return-object v0
.end method
