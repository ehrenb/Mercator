.class public Landroid/support/v4/app/am;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/am$a;,
        Landroid/support/v4/app/am$f;,
        Landroid/support/v4/app/am$g;,
        Landroid/support/v4/app/am$c;,
        Landroid/support/v4/app/am$b;,
        Landroid/support/v4/app/am$q;,
        Landroid/support/v4/app/am$d;,
        Landroid/support/v4/app/am$k;,
        Landroid/support/v4/app/am$j;,
        Landroid/support/v4/app/am$i;,
        Landroid/support/v4/app/am$p;,
        Landroid/support/v4/app/am$o;,
        Landroid/support/v4/app/am$n;,
        Landroid/support/v4/app/am$m;,
        Landroid/support/v4/app/am$l;,
        Landroid/support/v4/app/am$e;,
        Landroid/support/v4/app/am$h;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/app/am$h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 940
    invoke-static {}, Landroid/support/v4/os/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 941
    new-instance v0, Landroid/support/v4/app/am$k;

    invoke-direct {v0}, Landroid/support/v4/app/am$k;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->a:Landroid/support/v4/app/am$h;

    .line 957
    :goto_0
    return-void

    .line 942
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 943
    new-instance v0, Landroid/support/v4/app/am$j;

    invoke-direct {v0}, Landroid/support/v4/app/am$j;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->a:Landroid/support/v4/app/am$h;

    goto :goto_0

    .line 944
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    .line 945
    new-instance v0, Landroid/support/v4/app/am$i;

    invoke-direct {v0}, Landroid/support/v4/app/am$i;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->a:Landroid/support/v4/app/am$h;

    goto :goto_0

    .line 946
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 947
    new-instance v0, Landroid/support/v4/app/am$p;

    invoke-direct {v0}, Landroid/support/v4/app/am$p;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->a:Landroid/support/v4/app/am$h;

    goto :goto_0

    .line 948
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 949
    new-instance v0, Landroid/support/v4/app/am$o;

    invoke-direct {v0}, Landroid/support/v4/app/am$o;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->a:Landroid/support/v4/app/am$h;

    goto :goto_0

    .line 950
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_5

    .line 951
    new-instance v0, Landroid/support/v4/app/am$n;

    invoke-direct {v0}, Landroid/support/v4/app/am$n;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->a:Landroid/support/v4/app/am$h;

    goto :goto_0

    .line 952
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_6

    .line 953
    new-instance v0, Landroid/support/v4/app/am$m;

    invoke-direct {v0}, Landroid/support/v4/app/am$m;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->a:Landroid/support/v4/app/am$h;

    goto :goto_0

    .line 955
    :cond_6
    new-instance v0, Landroid/support/v4/app/am$l;

    invoke-direct {v0}, Landroid/support/v4/app/am$l;-><init>()V

    sput-object v0, Landroid/support/v4/app/am;->a:Landroid/support/v4/app/am$h;

    goto :goto_0
.end method

.method static a(Landroid/support/v4/app/ak;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/ak;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/am$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 877
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/am$a;

    .line 878
    invoke-interface {p0, v0}, Landroid/support/v4/app/ak;->a(Landroid/support/v4/app/aq$a;)V

    goto :goto_0

    .line 880
    :cond_0
    return-void
.end method

.method static a(Landroid/support/v4/app/al;Landroid/support/v4/app/am$q;)V
    .locals 7

    .prologue
    .line 884
    if-eqz p1, :cond_0

    .line 885
    instance-of v0, p1, Landroid/support/v4/app/am$c;

    if-eqz v0, :cond_1

    .line 886
    check-cast p1, Landroid/support/v4/app/am$c;

    .line 887
    iget-object v0, p1, Landroid/support/v4/app/am$c;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/am$c;->g:Z

    iget-object v2, p1, Landroid/support/v4/app/am$c;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/am$c;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/at;->a(Landroid/support/v4/app/al;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    instance-of v0, p1, Landroid/support/v4/app/am$f;

    if-eqz v0, :cond_2

    .line 893
    check-cast p1, Landroid/support/v4/app/am$f;

    .line 894
    iget-object v0, p1, Landroid/support/v4/app/am$f;->e:Ljava/lang/CharSequence;

    iget-boolean v1, p1, Landroid/support/v4/app/am$f;->g:Z

    iget-object v2, p1, Landroid/support/v4/app/am$f;->f:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/support/v4/app/am$f;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/at;->a(Landroid/support/v4/app/al;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 899
    :cond_2
    instance-of v0, p1, Landroid/support/v4/app/am$b;

    if-eqz v0, :cond_0

    .line 900
    check-cast p1, Landroid/support/v4/app/am$b;

    .line 901
    iget-object v1, p1, Landroid/support/v4/app/am$b;->e:Ljava/lang/CharSequence;

    iget-boolean v2, p1, Landroid/support/v4/app/am$b;->g:Z

    iget-object v3, p1, Landroid/support/v4/app/am$b;->f:Ljava/lang/CharSequence;

    iget-object v4, p1, Landroid/support/v4/app/am$b;->a:Landroid/graphics/Bitmap;

    iget-object v5, p1, Landroid/support/v4/app/am$b;->b:Landroid/graphics/Bitmap;

    iget-boolean v6, p1, Landroid/support/v4/app/am$b;->c:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/app/at;->a(Landroid/support/v4/app/al;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method static b(Landroid/support/v4/app/al;Landroid/support/v4/app/am$q;)V
    .locals 10

    .prologue
    .line 914
    if-eqz p1, :cond_1

    .line 915
    instance-of v0, p1, Landroid/support/v4/app/am$g;

    if-eqz v0, :cond_2

    .line 916
    check-cast p1, Landroid/support/v4/app/am$g;

    .line 917
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 918
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 919
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 920
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 921
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 923
    iget-object v0, p1, Landroid/support/v4/app/am$g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/am$g$a;

    .line 924
    invoke-virtual {v0}, Landroid/support/v4/app/am$g$a;->a()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 925
    invoke-virtual {v0}, Landroid/support/v4/app/am$g$a;->b()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 926
    invoke-virtual {v0}, Landroid/support/v4/app/am$g$a;->c()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    invoke-virtual {v0}, Landroid/support/v4/app/am$g$a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    invoke-virtual {v0}, Landroid/support/v4/app/am$g$a;->e()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 930
    :cond_0
    iget-object v1, p1, Landroid/support/v4/app/am$g;->a:Ljava/lang/CharSequence;

    iget-object v2, p1, Landroid/support/v4/app/am$g;->b:Ljava/lang/CharSequence;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/ap;->a(Landroid/support/v4/app/al;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 937
    :cond_1
    :goto_1
    return-void

    .line 934
    :cond_2
    invoke-static {p0, p1}, Landroid/support/v4/app/am;->a(Landroid/support/v4/app/al;Landroid/support/v4/app/am$q;)V

    goto :goto_1
.end method
