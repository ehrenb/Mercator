.class public Leu/chainfire/libsuperuser/b$a;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Leu/chainfire/libsuperuser/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Leu/chainfire/libsuperuser/c$a;

.field private h:Leu/chainfire/libsuperuser/c$a;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 626
    iput-object v1, p0, Leu/chainfire/libsuperuser/b$a;->a:Landroid/os/Handler;

    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/b$a;->b:Z

    .line 628
    const-string v0, "sh"

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$a;->c:Ljava/lang/String;

    .line 629
    iput-boolean v2, p0, Leu/chainfire/libsuperuser/b$a;->d:Z

    .line 630
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$a;->e:Ljava/util/List;

    .line 631
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Leu/chainfire/libsuperuser/b$a;->f:Ljava/util/Map;

    .line 632
    iput-object v1, p0, Leu/chainfire/libsuperuser/b$a;->g:Leu/chainfire/libsuperuser/c$a;

    .line 633
    iput-object v1, p0, Leu/chainfire/libsuperuser/b$a;->h:Leu/chainfire/libsuperuser/c$a;

    .line 634
    iput v2, p0, Leu/chainfire/libsuperuser/b$a;->i:I

    return-void
.end method

.method static synthetic a(Leu/chainfire/libsuperuser/b$a;)Z
    .locals 1

    .prologue
    .line 625
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/b$a;->b:Z

    return v0
.end method

.method static synthetic b(Leu/chainfire/libsuperuser/b$a;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Leu/chainfire/libsuperuser/b$a;)Z
    .locals 1

    .prologue
    .line 625
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/b$a;->d:Z

    return v0
.end method

.method static synthetic d(Leu/chainfire/libsuperuser/b$a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$a;->e:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Leu/chainfire/libsuperuser/b$a;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$a;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic f(Leu/chainfire/libsuperuser/b$a;)Leu/chainfire/libsuperuser/c$a;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$a;->g:Leu/chainfire/libsuperuser/c$a;

    return-object v0
.end method

.method static synthetic g(Leu/chainfire/libsuperuser/b$a;)Leu/chainfire/libsuperuser/c$a;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$a;->h:Leu/chainfire/libsuperuser/c$a;

    return-object v0
.end method

.method static synthetic h(Leu/chainfire/libsuperuser/b$a;)I
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Leu/chainfire/libsuperuser/b$a;->i:I

    return v0
.end method

.method static synthetic i(Leu/chainfire/libsuperuser/b$a;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$a;->a:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()Leu/chainfire/libsuperuser/b$a;
    .locals 1

    .prologue
    .line 697
    const-string v0, "su"

    invoke-virtual {p0, v0}, Leu/chainfire/libsuperuser/b$a;->a(Ljava/lang/String;)Leu/chainfire/libsuperuser/b$a;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Leu/chainfire/libsuperuser/b$a;
    .locals 0

    .prologue
    .line 882
    iput p1, p0, Leu/chainfire/libsuperuser/b$a;->i:I

    .line 883
    return-object p0
.end method

.method public a(Ljava/lang/String;)Leu/chainfire/libsuperuser/b$a;
    .locals 0

    .prologue
    .line 678
    iput-object p1, p0, Leu/chainfire/libsuperuser/b$a;->c:Ljava/lang/String;

    .line 679
    return-object p0
.end method

.method public a(Ljava/lang/String;ILeu/chainfire/libsuperuser/b$e;)Leu/chainfire/libsuperuser/b$a;
    .locals 2

    .prologue
    .line 760
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3}, Leu/chainfire/libsuperuser/b$a;->a([Ljava/lang/String;ILeu/chainfire/libsuperuser/b$e;)Leu/chainfire/libsuperuser/b$a;

    move-result-object v0

    return-object v0
.end method

.method public a([Ljava/lang/String;ILeu/chainfire/libsuperuser/b$e;)Leu/chainfire/libsuperuser/b$a;
    .locals 3

    .prologue
    .line 825
    iget-object v0, p0, Leu/chainfire/libsuperuser/b$a;->e:Ljava/util/List;

    new-instance v1, Leu/chainfire/libsuperuser/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, p3, v2}, Leu/chainfire/libsuperuser/b$b;-><init>([Ljava/lang/String;ILeu/chainfire/libsuperuser/b$e;Leu/chainfire/libsuperuser/b$d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 826
    return-object p0
.end method

.method public b()Leu/chainfire/libsuperuser/b$c;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 908
    new-instance v0, Leu/chainfire/libsuperuser/b$c;

    invoke-direct {v0, p0, v1, v1}, Leu/chainfire/libsuperuser/b$c;-><init>(Leu/chainfire/libsuperuser/b$a;Leu/chainfire/libsuperuser/b$e;Leu/chainfire/libsuperuser/b$1;)V

    return-object v0
.end method
