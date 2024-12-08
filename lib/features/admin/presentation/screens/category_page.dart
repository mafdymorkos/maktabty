import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mktabte/features/admin/presentation/screens/update_category_page.dart';
import '../../../../core/utils/show_dialog.dart';
import '../riverpods/category_riverpod.dart';

class CategoryPage extends ConsumerWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = ref.watch(categoryListProvider);

    void deleteCategory(int categoryId) {
      ref.read(categoryListProvider.notifier).deleteCategory(categoryId);
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return ListTile(
            title: Text(category.name),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => showDeleteConfirmationDialog(
                  context, ref, () => deleteCategory(category.id)),
            ),
            onTap: () {
              //TODO: Navigate to update category page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UpdateCategoryPage(category: category),
                ),
              );
            },
          );
        },
      ),
    );
  }
}