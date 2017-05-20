.class public final Lcom/paypal/android/sdk/ez;
.super Ljava/lang/Object;


# static fields
.field public static a:Z

.field private static final b:Lcom/paypal/android/sdk/fg;

.field private static c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/paypal/android/sdk/fg;

    const-class v1, Lcom/paypal/android/sdk/fb;

    sget-object v2, Lcom/paypal/android/sdk/gn;->a:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/paypal/android/sdk/fg;-><init>(Ljava/lang/Class;Ljava/util/List;)V

    sput-object v0, Lcom/paypal/android/sdk/ez;->b:Lcom/paypal/android/sdk/fg;

    new-instance v0, Lcom/paypal/android/sdk/fa;

    invoke-direct {v0}, Lcom/paypal/android/sdk/fa;-><init>()V

    sput-object v0, Lcom/paypal/android/sdk/ez;->c:Ljava/util/Set;

    return-void
.end method

.method public static a(Lcom/paypal/android/sdk/fb;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/ez;->b:Lcom/paypal/android/sdk/fg;

    invoke-virtual {v0, p0}, Lcom/paypal/android/sdk/fg;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/paypal/android/sdk/ba;->e:Lcom/paypal/android/sdk/ba;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ba;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/paypal/android/sdk/ez;->b:Lcom/paypal/android/sdk/fg;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bj:Lcom/paypal/android/sdk/fb;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/fg;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/paypal/android/sdk/ba;->b:Lcom/paypal/android/sdk/ba;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ba;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/paypal/android/sdk/ez;->b:Lcom/paypal/android/sdk/fg;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aK:Lcom/paypal/android/sdk/fb;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/fg;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/paypal/android/sdk/ba;->a:Lcom/paypal/android/sdk/ba;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ba;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/paypal/android/sdk/ez;->b:Lcom/paypal/android/sdk/fg;

    const-string v1, "INTERNAL_SERVICE_ERROR"

    sget-object v2, Lcom/paypal/android/sdk/fb;->aQ:Lcom/paypal/android/sdk/fb;

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/sdk/fg;->a(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/paypal/android/sdk/ba;->c:Lcom/paypal/android/sdk/ba;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/ba;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/paypal/android/sdk/ez;->b:Lcom/paypal/android/sdk/fg;

    sget-object v1, Lcom/paypal/android/sdk/fb;->bv:Lcom/paypal/android/sdk/fb;

    invoke-virtual {v0, v1}, Lcom/paypal/android/sdk/fg;->a(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/paypal/android/sdk/ez;->b:Lcom/paypal/android/sdk/fg;

    sget-object v1, Lcom/paypal/android/sdk/fb;->aQ:Lcom/paypal/android/sdk/fb;

    invoke-virtual {v0, p0, v1}, Lcom/paypal/android/sdk/fg;->a(Ljava/lang/String;Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/paypal/android/sdk/ez;->b:Lcom/paypal/android/sdk/fg;

    invoke-virtual {v0, p0}, Lcom/paypal/android/sdk/fg;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/paypal/android/sdk/cd;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/paypal/android/sdk/ez;->c:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/paypal/android/sdk/ez;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/paypal/android/sdk/ez;->b:Lcom/paypal/android/sdk/fg;

    invoke-virtual {v0}, Lcom/paypal/android/sdk/fg;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method
