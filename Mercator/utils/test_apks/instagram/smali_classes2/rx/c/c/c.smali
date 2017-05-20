.class public final Lrx/c/c/c;
.super Lrx/g;
.source "ImmediateScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/c/c/c$a;
    }
.end annotation


# static fields
.field public static final a:Lrx/c/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lrx/c/c/c;

    invoke-direct {v0}, Lrx/c/c/c;-><init>()V

    sput-object v0, Lrx/c/c/c;->a:Lrx/c/c/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lrx/g;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public a()Lrx/g$a;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lrx/c/c/c$a;

    invoke-direct {v0, p0}, Lrx/c/c/c$a;-><init>(Lrx/c/c/c;)V

    return-object v0
.end method
