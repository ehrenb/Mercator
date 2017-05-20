.class public final Lcom/paypal/android/sdk/de;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/paypal/android/sdk/ay;


# instance fields
.field private a:Lcom/paypal/android/sdk/dd;


# direct methods
.method public constructor <init>(Lcom/paypal/android/sdk/dd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    return-void
.end method


# virtual methods
.method public final a(Lcom/paypal/android/sdk/by;)V
    .locals 2

    instance-of v0, p1, Lcom/paypal/android/sdk/ev;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/paypal/android/sdk/by;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/ev;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->a(Lcom/paypal/android/sdk/ev;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/ev;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->b(Lcom/paypal/android/sdk/ev;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/paypal/android/sdk/em;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/paypal/android/sdk/by;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/em;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->a(Lcom/paypal/android/sdk/em;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/em;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->b(Lcom/paypal/android/sdk/em;)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/paypal/android/sdk/eg;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/paypal/android/sdk/by;->q()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/eg;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->a(Lcom/paypal/android/sdk/eg;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/eg;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->b(Lcom/paypal/android/sdk/eg;)V

    goto :goto_0

    :cond_5
    instance-of v0, p1, Lcom/paypal/android/sdk/ew;

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/paypal/android/sdk/by;->q()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/ew;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->a(Lcom/paypal/android/sdk/ew;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/ew;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->b(Lcom/paypal/android/sdk/ew;)V

    goto :goto_0

    :cond_7
    instance-of v0, p1, Lcom/paypal/android/sdk/ei;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/paypal/android/sdk/by;->q()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    invoke-interface {v0}, Lcom/paypal/android/sdk/dd;->a()V

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/ei;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->a(Lcom/paypal/android/sdk/ei;)V

    goto :goto_0

    :cond_9
    instance-of v0, p1, Lcom/paypal/android/sdk/ee;

    if-eqz v0, :cond_b

    invoke-virtual {p1}, Lcom/paypal/android/sdk/by;->q()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/ee;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->a(Lcom/paypal/android/sdk/ee;)V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/ee;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->b(Lcom/paypal/android/sdk/ee;)V

    goto/16 :goto_0

    :cond_b
    instance-of v0, p1, Lcom/paypal/android/sdk/ef;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/paypal/android/sdk/by;->q()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/ef;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->a(Lcom/paypal/android/sdk/ef;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/ef;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->b(Lcom/paypal/android/sdk/ef;)V

    goto/16 :goto_0

    :cond_d
    instance-of v0, p1, Lcom/paypal/android/sdk/ec;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Lcom/paypal/android/sdk/by;->q()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/ec;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->a(Lcom/paypal/android/sdk/ec;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/ec;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->b(Lcom/paypal/android/sdk/ec;)V

    goto/16 :goto_0

    :cond_f
    instance-of v0, p1, Lcom/paypal/android/sdk/ek;

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/paypal/android/sdk/by;->q()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/ek;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->a(Lcom/paypal/android/sdk/ek;)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/ek;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->b(Lcom/paypal/android/sdk/ek;)V

    goto/16 :goto_0

    :cond_11
    instance-of v0, p1, Lcom/paypal/android/sdk/el;

    if-eqz v0, :cond_13

    invoke-virtual {p1}, Lcom/paypal/android/sdk/by;->q()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/el;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->a(Lcom/paypal/android/sdk/el;)V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/paypal/android/sdk/de;->a:Lcom/paypal/android/sdk/dd;

    check-cast p1, Lcom/paypal/android/sdk/el;

    invoke-interface {v0, p1}, Lcom/paypal/android/sdk/dd;->b(Lcom/paypal/android/sdk/el;)V

    goto/16 :goto_0

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not handled"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
