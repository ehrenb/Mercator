.class final Lcom/facebook/login/f$2;
.super Ljava/util/HashSet;
.source "LoginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/login/f;->c()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 398
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 399
    const-string v0, "ads_management"

    invoke-virtual {p0, v0}, Lcom/facebook/login/f$2;->add(Ljava/lang/Object;)Z

    .line 400
    const-string v0, "create_event"

    invoke-virtual {p0, v0}, Lcom/facebook/login/f$2;->add(Ljava/lang/Object;)Z

    .line 401
    const-string v0, "rsvp_event"

    invoke-virtual {p0, v0}, Lcom/facebook/login/f$2;->add(Ljava/lang/Object;)Z

    .line 402
    return-void
.end method
