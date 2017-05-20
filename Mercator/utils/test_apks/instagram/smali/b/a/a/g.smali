.class public Lb/a/a/g;
.super Lb/a/a/b;
.source "DNSQuestion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/g$1;,
        Lb/a/a/g$a;,
        Lb/a/a/g$g;,
        Lb/a/a/g$f;,
        Lb/a/a/g$e;,
        Lb/a/a/g$d;,
        Lb/a/a/g$c;,
        Lb/a/a/g$b;
    }
.end annotation


# static fields
.field private static b:Ld/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lb/a/a/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ld/a/c;->a(Ljava/lang/String;)Ld/a/b;

    move-result-object v0

    sput-object v0, Lb/a/a/g;->b:Ld/a/b;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V
    .locals 0

    .prologue
    .line 222
    invoke-direct {p0, p1, p2, p3, p4}, Lb/a/a/b;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V

    .line 223
    return-void
.end method

.method public static a(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)Lb/a/a/g;
    .locals 2

    .prologue
    .line 239
    sget-object v0, Lb/a/a/g$1;->a:[I

    invoke-virtual {p1}, Lb/a/a/a/e;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 257
    new-instance v0, Lb/a/a/g;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/a/a/g;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V

    :goto_0
    return-object v0

    .line 241
    :pswitch_0
    new-instance v0, Lb/a/a/g$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/a/a/g$b;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V

    goto :goto_0

    .line 243
    :pswitch_1
    new-instance v0, Lb/a/a/g$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/a/a/g$c;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V

    goto :goto_0

    .line 245
    :pswitch_2
    new-instance v0, Lb/a/a/g$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/a/a/g$c;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V

    goto :goto_0

    .line 247
    :pswitch_3
    new-instance v0, Lb/a/a/g$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/a/a/g$a;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V

    goto :goto_0

    .line 249
    :pswitch_4
    new-instance v0, Lb/a/a/g$d;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/a/a/g$d;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V

    goto :goto_0

    .line 251
    :pswitch_5
    new-instance v0, Lb/a/a/g$e;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/a/a/g$e;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V

    goto :goto_0

    .line 253
    :pswitch_6
    new-instance v0, Lb/a/a/g$f;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/a/a/g$f;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V

    goto :goto_0

    .line 255
    :pswitch_7
    new-instance v0, Lb/a/a/g$g;

    invoke-direct {v0, p0, p1, p2, p3}, Lb/a/a/g$g;-><init>(Ljava/lang/String;Lb/a/a/a/e;Lb/a/a/a/d;Z)V

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public a(Lb/a/a/l;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/l;",
            "Ljava/util/Set",
            "<",
            "Lb/a/a/h;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 278
    return-void
.end method

.method protected a(Lb/a/a/l;Ljava/util/Set;Lb/a/a/q;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/l;",
            "Ljava/util/Set",
            "<",
            "Lb/a/a/h;",
            ">;",
            "Lb/a/a/q;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v3, 0xe10

    const/4 v2, 0x1

    .line 281
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lb/a/a/q;->B()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 282
    invoke-virtual {p0}, Lb/a/a/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lb/a/a/q;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lb/a/a/q;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lb/a/a/q;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v0

    invoke-virtual {p0}, Lb/a/a/g;->f()Lb/a/a/a/d;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lb/a/a/k;->a(Lb/a/a/a/d;ZI)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 284
    invoke-virtual {p0}, Lb/a/a/g;->f()Lb/a/a/a/d;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/a/l;->x()Lb/a/a/k;

    move-result-object v1

    invoke-virtual {p3, v0, v2, v3, v1}, Lb/a/a/q;->a(Lb/a/a/a/d;ZILb/a/a/k;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 286
    :cond_1
    sget-object v0, Lb/a/a/g;->b:Ld/a/b;

    invoke-interface {v0}, Ld/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    sget-object v0, Lb/a/a/g;->b:Ld/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lb/a/a/l;->w()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " DNSQuestion("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lb/a/a/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ").addAnswersForServiceInfo(): info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ld/a/b;->b(Ljava/lang/String;)V

    .line 290
    :cond_2
    return-void
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public a(J)Z
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lb/a/a/l;)Z
    .locals 1

    .prologue
    .line 318
    const/4 v0, 0x0

    return v0
.end method

.method f(Lb/a/a/b;)Z
    .locals 2

    .prologue
    .line 265
    invoke-virtual {p0, p1}, Lb/a/a/g;->c(Lb/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lb/a/a/g;->d(Lb/a/a/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lb/a/a/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lb/a/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
