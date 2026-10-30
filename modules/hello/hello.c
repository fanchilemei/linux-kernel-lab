// SPDX-License-Identifier: GPL-2.0
/*
 * hello - benign out-of-tree module for the linux-kernel-lab study tree.
 *
 * Prints one info line when the module loads and one when it unloads.
 * It has no other behavior.
 */
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/module.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("linux-kernel-lab");
MODULE_DESCRIPTION("Benign hello-world study module");
MODULE_VERSION("0.1");

static int __init hello_init(void)
{
	pr_info("hello: loaded (study stub)\n");
	return 0;
}

static void __exit hello_exit(void)
{
	pr_info("hello: unloaded (study stub)\n");
}

module_init(hello_init);
module_exit(hello_exit);
